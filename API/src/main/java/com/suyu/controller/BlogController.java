package com.suyu.controller;

import com.alibaba.fastjson.JSON;
import com.suyu.entity.BlogMain;
import com.suyu.entity.InfoCode;
import com.suyu.entity.ResInfo;
import com.suyu.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;
    /**
     * 查询博客列表
     * @return
     */
    @RequestMapping(value = "list")
    public String list() {
        BlogMain blogMain = new BlogMain();
        blogMain.setSearch("j");
        blogMain.setPageno(1);
        blogMain.setPagesize(5);
        ResInfo resInfo = new ResInfo();
        Map<String,Object> map = new HashMap<String,Object>();
        List<BlogMain> blogList = blogService.selectBlogList(blogMain);
        int count = blogService.selectBlogCount(blogMain);
        map.put("blogs",blogList);
        blogMain.setCount(count);
        map.put("count",count);
        map.put("currpage",blogMain.getPageno());
        map.put("pages",count%blogMain.getPagesize()==0? count/blogMain.getPagesize() : count/blogMain.getPagesize()+1);
        resInfo.setContent(map);
        resInfo.setCode(InfoCode.SUCCESS);
        return JSON.toJSONString(resInfo);
    }
}
