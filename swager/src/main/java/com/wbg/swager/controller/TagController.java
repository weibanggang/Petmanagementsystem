package com.wbg.swager.controller;

import com.wbg.swager.dao.TagMapper;
import com.wbg.swager.entity.R;
import com.wbg.swager.entity.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/tag")
public class TagController {
    @Autowired
    private TagMapper tagMapper;
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("tag",tagMapper.selectAll());
        return "tag";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public String add(Tag tag) {
        R r=new R();

        if(tagMapper.insert(tag)>0){
           r.setCode(200);
        }
        return r.toJson();
    }
    @RequestMapping(value = "/del",method = RequestMethod.GET)
    @ResponseBody
    public String del(int id) {
        R r=new R();

        if(tagMapper.deleteByPrimaryKey(id)>0){
            r.setCode(200);
        }
        return r.toJson();
    }
}
