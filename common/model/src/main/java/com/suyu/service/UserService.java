package com.suyu.service;

import com.suyu.domain.User;

public interface UserService {

    User selectByLogin(User user);
}
