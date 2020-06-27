package com.github.shardingsphere.demo.mapper;

import com.github.shardingsphere.demo.entity.Order;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {

    void save(Order order);

    List<Order> selectAll();
}
