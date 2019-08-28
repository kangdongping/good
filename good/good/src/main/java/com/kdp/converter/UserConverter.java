package com.kdp.converter;

import com.kdp.entity.User;
import com.kdp.vo.UserVO;

public class UserConverter {
    public static User converter(UserVO userVO){
       User user = new User();
       user.setUserName(userVO.getName());
       user.setUserEmail(userVO.getEmail());
       user.setUserTel(userVO.getTel());
       user.setUserPass(userVO.getPassword());
       return user;

    }
}
