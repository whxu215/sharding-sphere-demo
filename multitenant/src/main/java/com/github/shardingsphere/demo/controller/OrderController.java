package com.github.shardingsphere.demo.controller;

import com.google.common.collect.Lists;
import com.github.shardingsphere.demo.entity.Order;
import com.github.shardingsphere.demo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.Random;

@RestController
public class OrderController {
    @Autowired
    private OrderService orderService;

    @GetMapping("create-order")
    public String createOrder() {
        List<String> merchantList = Lists.newArrayList("aliyun", "taobao", "tmall",
                "jd", "pdd", "wangyi", "yhd", "suning", "meituan");
        for (int i = 0; i < 50; i++) {
            Order order = new Order();
            order.setUserId(i);
            order.setOrderNo(System.currentTimeMillis() + String.format("%06d", i));
            order.setOrderTime(new Date());
            order.setMerchant(merchantList.get(new Random().nextInt(merchantList.size())));
            orderService.save(order);
        }
        return "ok";
    }

    @GetMapping("list-order")
    public List<Order> listOrder() {
        return orderService.selectAll();
    }
}
