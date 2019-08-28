package com.kdp.converter;

import com.kdp.entity.User;
import com.kdp.vo.PassVO;

public class PassConverter {
    public static User converter(PassVO passVO){
        User user = new User();
        user.setUserId(passVO.getUserId());
        user.setUserName(passVO.getUserName());
        user.setUserPass(passVO.getUserPass());
        return user;

    }
}
