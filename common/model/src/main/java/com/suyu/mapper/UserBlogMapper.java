package com.suyu.mapper;

import com.suyu.domain.UserBlog;
import com.suyu.domain.UserBlogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserBlogMapper {
    long countByExample(UserBlogExample example);

    int deleteByExample(UserBlogExample example);

    int deleteByPrimaryKey(Long uid);

    int insert(UserBlog record);

    int insertSelective(UserBlog record);

    List<UserBlog> selectByExample(UserBlogExample example);

    UserBlog selectByPrimaryKey(Long uid);

    int updateByExampleSelective(@Param("record") UserBlog record, @Param("example") UserBlogExample example);

    int updateByExample(@Param("record") UserBlog record, @Param("example") UserBlogExample example);

    int updateByPrimaryKeySelective(UserBlog record);

    int updateByPrimaryKey(UserBlog record);
}