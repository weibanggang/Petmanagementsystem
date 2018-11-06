package com.wbg.swager.controller;

import com.wbg.swager.dao.OrdersMapper;
import com.wbg.swager.entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrdersMapper ordersMapper;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String select(Model model){
        List<Orders> list=ordersMapper.selectAll();
        model.addAttribute("order",list);
        return "order";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Orders order){
        System.out.println(order);
        return "";
    }
    @RequestMapping(value = "/adds",method = RequestMethod.POST)
    public String adds(){
        System.out.println();
        return "";
    }

    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "index";
    }
}
