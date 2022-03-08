package com.fx.dao;

import com.fx.entity.User;

public interface UserDao {

    User doLogin(String username);

    void addUser(User user);

}
