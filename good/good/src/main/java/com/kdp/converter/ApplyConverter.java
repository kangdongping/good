package com.kdp.converter;

import com.kdp.entity.Apply;
import com.kdp.entity.Good;
import com.kdp.entity.User;
import com.kdp.vo.ApplyVO;

public class ApplyConverter {
    public static Apply converter(ApplyVO applyVO, String image, Good good, User user){
        Apply apply = new Apply();
        apply.setApplyName(applyVO.getApplyName());
        apply.setApplyTel(applyVO.getApplyTel());
        apply.setApplyInfor(applyVO.getApplyInfor());
        apply.setApplyImage(image);
        apply.setGood(good);
        apply.setUser(user);
        return apply;
    }
}
