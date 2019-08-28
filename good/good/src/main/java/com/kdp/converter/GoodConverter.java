package com.kdp.converter;

import com.kdp.entity.Good;
import com.kdp.entity.Type;
import com.kdp.entity.User;
import com.kdp.vo.GoodVO;

public class GoodConverter {
    public static Good converter(GoodVO goodVO, String image, User user, Type type){
        Good good = new Good();
        good.setGoodName(goodVO.getGoodName());
        good.setGoodInfor(goodVO.getGoodInfor());
        good.setGoodDate(goodVO.getGoodDate());
        good.setGoodLocal(goodVO.getGoodLocal());
        good.setGoodTel(goodVO.getGoodTel());
        good.setGoodImage(image);
        good.setUser(user);
        good.setType(type);
        return good;
    }
}
