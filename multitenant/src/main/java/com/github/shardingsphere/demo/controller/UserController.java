package com.github.shardingsphere.demo.controller;


import com.github.shardingsphere.demo.service.UserService;
import com.google.common.collect.Lists;
import com.github.shardingsphere.demo.config.DbLocator;
import com.github.shardingsphere.demo.entity.User;
import org.apache.shardingsphere.api.hint.HintManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.Random;


@RestController
public class UserController {

    /**
     * 模拟插入数据
     */
    List<User> userList = Lists.newArrayList();
    @Autowired
    private UserService userService;

    /**
     * 初始化插入数据
     */
    @PostConstruct
    private void getData() {
        userList.add(new User(1L, "小小", "女", 3));
        userList.add(new User(2L, "爸爸", "男", 30));
        userList.add(new User(3L, "妈妈", "女", 28));
        userList.add(new User(4L, "爷爷", "男", 64));
        userList.add(new User(5L, "奶奶", "女", 62));
    }

    /**
     * @Description: 批量保存用户
     */
    @PostMapping("save-user")
    public Object saveUser() {
        DbLocator.setDbName("ds" + new Random().nextInt(2));
        return userService.insertForeach(userList);
    }

    /**
     * @Description: 获取用户列表
     */
    @GetMapping("list-user")
    public Object listUser() {
        System.out.println("1111111111");
        HintManager hintManager = HintManager.getInstance();
        try {
            hintManager.addDatabaseShardingValue("tab_user", "ds" + new Random().nextInt(2));
            DbLocator.setDbName("ds" + new Random().nextInt(2));
            return userService.list();
        } finally {
            hintManager.close();
        }
    }

    /**
     * @Description: 获取用户列表
     */
    @GetMapping("list-user/{id}")
    public Object listUserById(@PathVariable Integer id) {
        DbLocator.setDbName("ds0");
        return userService.getUserById(id);
    }


}
