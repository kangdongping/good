package com.kdp.service;

import com.kdp.dao.UserDAO;
import com.kdp.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
   @Autowired
    private UserDAO userDAO;


   //注册
    public void reg(User user){
        userDAO.insertUser(user);
    }

    //判断重名
    public User regName(String userName){
        return userDAO.regName(userName);
    }

    //登录
    public User login(User user){
        return userDAO.login(user);
    }


    //根据用户Id修改用户信息
    public void updateUser(User user){
        userDAO.updateUser(user);
    }


    //根据Id查询用户信息
    public User queryUser(int userId){
        return userDAO.queryUser(userId);
    }

    //根据用户Id修改用户密码
    public void updatePass(User user){
        userDAO.updatePass(user);
    }

}
