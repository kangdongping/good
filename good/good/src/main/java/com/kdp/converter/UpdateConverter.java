package com.kdp.converter;

import com.kdp.entity.User;
import com.kdp.vo.UpdateVO;

public class UpdateConverter {

    public static User converter(UpdateVO updateVO){
        User user = new User();
        user.setUserId(updateVO.getUserId());
        user.setUserName(updateVO.getUserName());
        user.setUserEmail(updateVO.getUserEmail());
        user.setUserTel(updateVO.getUserTel());
        return user;
    }
}
