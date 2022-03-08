package com.fx.service.impl;

import com.fx.dao.UserDao;
import com.fx.entity.User;
import com.fx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User doLogin(String username) {
        return userDao.doLogin(username);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }
}
