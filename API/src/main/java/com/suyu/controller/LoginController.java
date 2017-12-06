package com.suyu.controller;

import com.alibaba.fastjson.JSON;
import com.suyu.domain.User;
import com.suyu.entity.InfoCode;
import com.suyu.entity.ResInfo;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/login")
public class LoginController {

    @RequestMapping("/index")
    public String login(@RequestBody User user){
        ResInfo resInfo = new ResInfo();
       if (user.getUsername().equals("admin") && user.getPassword().equals("123456")) {
            resInfo.setCode(InfoCode.SUCCESS);
            user.setId(1l);
            resInfo.setContent(user);
            resInfo.setMessage("登录成功");
       } else {
           resInfo.setCode(InfoCode.ERROR);
           resInfo.setMessage("登录失败");
       }
        System.out.println(JSON.toJSONString(resInfo));
       return JSON.toJSONString(resInfo);
    }

}