package com.kdp.service;

import com.kdp.dao.ApplyDAO;
import com.kdp.entity.Apply;
import com.kdp.entity.Good;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplyService {

    @Autowired
    private ApplyDAO applyDAO;


    //根据用户ID查询我申请的物品
    public List<Apply> queryApply(int userId){
        return applyDAO.queryApply(userId);
    }


    //添加申请信息
    public void addApply(Apply apply){
        applyDAO.addApply(apply);
    }


    //根据good名字查询信息
    public Good queryGoodByName(String goodName){
        return applyDAO.queryGoodByName(goodName);
    }

}
