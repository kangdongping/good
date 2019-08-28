package com.kdp.converter;

import com.kdp.entity.User;
import com.kdp.vo.LoginVO;

public class LoginConverter {
    public static User converter(LoginVO loginVO){
        User user = new User();
        user.setUserName(loginVO.getName());
        user.setUserPass(loginVO.getPassword());
        return user;
    }
}
