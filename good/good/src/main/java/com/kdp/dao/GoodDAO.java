package com.kdp.dao;

import com.kdp.entity.Good;
import com.kdp.vo.GoodSearchVO;

import java.util.List;

public interface GoodDAO {

    //搜索发布的信息
    List<Good> search(GoodSearchVO searchVO);

    //添加失物信息
    void fabu(Good good);

    //根据类型ID查询到类型名称
    int queryIdByName(String typeName);

    //搜索细节物品
    Good searchDetails(int goodId);


    //查询用户发布的物品
    List<Good> queryGood(int userId);

    //删除用户发布的
    void deleteGood(int goodId);



}
