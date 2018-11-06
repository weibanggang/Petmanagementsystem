package com.wbg.swager.controller;


import com.sun.org.apache.xpath.internal.operations.Mod;
import com.wbg.swager.dao.UserMapper;
import com.wbg.swager.entity.FormBean;
import com.wbg.swager.entity.R;
import com.wbg.swager.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.Oneway;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.ws.rs.PathParam;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserMapper userMapper;
    /*
    添加操作
     */
    @RequestMapping(method = RequestMethod.POST)
    public String create(User user, Model model) {
        try{
            if (userMapper.insert(user) > 0) {
                model.addAttribute("msg", "添加成功");
                model.addAttribute("username", "");
                model.addAttribute("firstname", "");
                model.addAttribute("lastname", "");
                model.addAttribute("email", "");
                model.addAttribute("password", "");
                model.addAttribute("phone", "");
                model.addAttribute("userstatus", "");
                return "useradd";
            } else {
                model.addAttribute("msg", "添加失败");
                model.addAttribute("username", user.getUsername());
                model.addAttribute("firstname", user.getFirstname());
                model.addAttribute("lastname", user.getLastname());
                model.addAttribute("email", user.getEmail());
                model.addAttribute("password", user.getPassword());
                model.addAttribute("phone", user.getPhone());
                model.addAttribute("userstatus", user.getUserstatus());
            }
        }catch (Exception e){
            model.addAttribute("msg", "异常添加失败");
            model.addAttribute("username", user.getUsername());
            model.addAttribute("firstname", user.getFirstname());
            model.addAttribute("lastname", user.getLastname());
            model.addAttribute("email", user.getEmail());
            model.addAttribute("password", user.getPassword());
            model.addAttribute("phone", user.getPhone());
            model.addAttribute("userstatus", user.getUserstatus());
            return "useradd";
        }

        return "useradd";
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("user",userMapper.selectAll());
        return "user";
    }
    /**
     * 批量添加操作
     */
    @RequestMapping(value = "/createWithArray",method = RequestMethod.POST)
    public String createWithArray(FormBean formBean, Model model, RedirectAttributes redirectAttributes) {
        List<User> list=formBean.getList();
        int sum=0;
        for (User user : list) {
            userMapper.insert(user);
            sum++;
        }
            model.addAttribute("msg","成功添加:"+sum+"条数据");

        return "useradd";
    }
    /**
     * 验证登录
     * username password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("username") String username , @RequestParam("password") String password, HttpServletRequest request){
       R r=new R();
        try {
            if(userMapper.Login(username,password)>0){
                request.getSession().setAttribute("user",username);
                r.setMsg("登录成功");
                r.setCode(200);
            }else{
                r.setMsg("账号密码不一致");
            }
        }catch (Exception e){
            r.setMsg("账号密码异常！");
            return r.toJson();
        }
        return r.toJson();
    }

    /**
     * 退出登录
     * username password
     * @return
     */
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String outlogin(HttpServletRequest request){
        request.getSession().setAttribute("user",null);
        return "redirect:";
    }
    /**
     * 根据用户名查询操作
     * username
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getusername(String username , Model model){
        List<User> user=userMapper.selectByUserName(username);
        model.addAttribute("user",user);
        return "user";
    }
    /**
     * 根据用户名查询修改
     * username
     * @return
     */
    @RequestMapping(value = "/{username}",method = RequestMethod.PUT)
    public String putusername(@PathVariable("username") String username ,Model model){
        try {
            if(userMapper.updateByUserName(username)>0){
                model.addAttribute("msg","修改成功");
            }
            else {
                model.addAttribute("msg","修改失败");
            }
        }catch (Exception e){
            model.addAttribute("msg","修改失败,请重试");
            return "no";
        }

        return "no";
    }

    /**
     * 根据用户名删除操作
     * username
     * @return
     */
    @RequestMapping(value = "/{username}",method = RequestMethod.DELETE)
    public String del(@PathVariable("username") String username){
        R r=new R();
        try {
            if(userMapper.deleteByUserName(username)>0){
                r.setCode(200);
            }
        }catch (Exception e){
            return r.toJson();
        }

        return r.toJson();
    }



}
