package com.wbg.swager.controller;

import com.wbg.swager.dao.CategoryMapper;
import com.wbg.swager.dao.TagMapper;
import com.wbg.swager.entity.Category;
import com.wbg.swager.entity.R;
import com.wbg.swager.entity.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private CategoryMapper categoryMapper;
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("category",categoryMapper.selectAll());
        return "category";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public String add(Category category) {
        R r=new R();
        try {
            if(categoryMapper.insert(category)>0){
                r.setCode(200);
            }
        }catch (Exception e){

            return r.toJson();
        }

        return r.toJson();
    }
    @RequestMapping(value = "/del",method = RequestMethod.GET)
    @ResponseBody
    public String del(int id) {
        R r=new R();
        try {
        if(categoryMapper.deleteByPrimaryKey(id)>0){
            r.setCode(200);
        }
        }catch (Exception e){

            return r.toJson();
        }

        return r.toJson();
    }
}
