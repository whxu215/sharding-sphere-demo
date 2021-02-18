package com.github.shardingsphere.demo.service;

import com.github.shardingsphere.demo.entity.User;

import java.util.List;

public interface UserService {

    /**
     * 获取所有用户信息
     */
    List<User>  list();

    User  getUserById(Integer id);

    /**
     *   批量 保存用户信息
     * @param userVOList
     */
    String  insertForeach(List<User> userVOList);

}