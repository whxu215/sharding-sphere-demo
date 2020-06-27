package com.github.shardingsphere.demo.service;


import com.github.shardingsphere.demo.entity.Order;

import java.util.List;

public interface OrderService {

    void save(Order order);
    List<Order> selectAll();

}

