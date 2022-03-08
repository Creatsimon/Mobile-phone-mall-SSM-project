package com.fx.service;

import com.fx.entity.User;

public interface UserService {

    User doLogin(String username);

    void addUser(User user);

}
