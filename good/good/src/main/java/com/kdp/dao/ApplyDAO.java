package com.kdp.dao;

import com.kdp.entity.Apply;
import com.kdp.entity.Good;

import java.util.List;

public interface ApplyDAO {

    //根据用户ID查询我申请的物品
    List<Apply> queryApply(int userId);

    //添加申请信息
    void addApply(Apply apply);

    //根据good名字查询信息
    Good queryGoodByName(String goodName);

}
