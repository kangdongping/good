package com.kdp.dao;

import com.kdp.entity.User;

public interface UserDAO {

    //注册
    void insertUser(User user);

    //登录
    User login(User user);

    //判断用户名注册重复 查询个人信息
    User regName(String userName);

    //根据用户Id修改用户信息
    void updateUser(User user);

    //根据用户Id修改用户密码
    void updatePass(User user);

    //根据Id查询用户信息
    User queryUser(int userId);
}
