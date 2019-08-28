package com.kdp.service;

import com.kdp.dao.GoodDAO;
import com.kdp.entity.Good;
import com.kdp.vo.GoodSearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodService {

    @Autowired
    private GoodDAO goodDAO;

    //搜索发布的信息
    public List<Good> search(GoodSearchVO searchVO){
        return goodDAO.search(searchVO);
    }


    //发布失物信息
    public void fabu(Good good){
        goodDAO.fabu(good);
    }

    //根据类型ID查询到类型名称
    public int queryIdByName(String typeName){
        return goodDAO.queryIdByName(typeName);
    }


    //搜索细节物品
    public Good searchDetails(int goodId){
        return goodDAO.searchDetails(goodId);
    }


    //查询用户发布的物品
    public List<Good> queryGood(int userId){
        return goodDAO.queryGood(userId);
    }


    //删除用户发布的
    public void deleteGood(int goodId){
        goodDAO.deleteGood(goodId);
    }

}
