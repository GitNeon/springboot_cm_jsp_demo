package com.baizhi.controller;

import com.baizhi.entity.Order;
import com.baizhi.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderMapper orderMapper;

    @RequestMapping("/getAllOrder")
    @ResponseBody
    public List<Order> getAllUser(){

        return orderMapper.selectAll();
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
