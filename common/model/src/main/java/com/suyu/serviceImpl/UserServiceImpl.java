package com.suyu.serviceImpl;

import com.suyu.domain.User;
import com.suyu.mapper.UserMapper;
import com.suyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectByLogin(User user) {
        return userMapper.selectByLogin(user);
    }
}
