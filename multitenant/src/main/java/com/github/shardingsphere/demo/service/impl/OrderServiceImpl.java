package com.github.shardingsphere.demo.service.impl;

import com.github.shardingsphere.demo.entity.Order;
import com.github.shardingsphere.demo.mapper.OrderMapper;
import com.github.shardingsphere.demo.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {


    @Resource
    private OrderMapper orderMapper;

    @Override
    public void save(Order order) {
        orderMapper.save(order);
    }

    @Override
    public List<Order> selectAll() {
        return orderMapper.selectAll();
    }
}
