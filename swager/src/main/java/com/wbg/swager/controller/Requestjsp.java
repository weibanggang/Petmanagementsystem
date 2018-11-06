package com.wbg.swager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/qj")
public class Requestjsp {
    @RequestMapping(value = "{url}",method = RequestMethod.GET)
    public String index(@PathVariable("url") String url){
        return url;
    }
}
