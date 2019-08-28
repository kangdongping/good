package com.kdp.controller;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kdp.common.Constant;
import com.kdp.converter.GoodConverter;
import com.kdp.entity.Good;
import com.kdp.entity.Type;
import com.kdp.entity.User;
import com.kdp.service.GoodService;
import com.kdp.vo.GoodSearchVO;
import com.kdp.vo.GoodShowVO;
import com.kdp.vo.GoodVO;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import sun.plugin.com.Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/good")
public class GoodController {
    @Autowired
    private GoodService goodService;

    //图片显示处理
    public static final String UPLOAD_DIR = "C:\\Users\\Administrator\\Desktop\\good\\good\\src\\main\\webapp\\images\\";
    @RequestMapping("/images")
    public String images(String goodImage, HttpServletResponse response) throws IOException {
        IOUtils.copy(new FileInputStream(UPLOAD_DIR + goodImage),response.getOutputStream());
        return null;
    }

    //搜索失物信息
    @RequestMapping("/search")
    public String search(GoodShowVO goodShowVO, Model model, Integer pageNum, HttpSession session){
        if(pageNum == null){
            pageNum =1;
        }

        session.setAttribute("vo",goodShowVO);
        System.out.println(goodShowVO);

        GoodSearchVO goodSearchVO = new GoodSearchVO();

        goodSearchVO.setSearchName(goodShowVO.getSearchName());
        goodSearchVO.setSearchType(goodShowVO.getSearchType());


        PageHelper.startPage(pageNum, Constant.PAGE_SIZE);

        PageInfo<Good> pageInfo = new PageInfo<>(goodService.search(goodSearchVO));
        System.out.println("pageinfo=============="+pageInfo.getList().size());
        for (Object object:pageInfo.getList())
            System.out.println(object);
        model.addAttribute("pageInfo",pageInfo);
        return "list";
    }



    @RequestMapping("/aa")
    public String tes(){
        return "details";
    }


    //发布失物信息
    @RequestMapping("/fabushow")
    public String fabushow(){
        return "addGood";
    }

    //处理发布失物信息
    @RequestMapping("/fabu")
    public String fabu(GoodVO goodVO,HttpServletRequest request) throws IOException {
        System.out.println("--------------------------------");
        System.out.println(goodVO);
        goodVO.getGoodImage().transferTo(new File(UPLOAD_DIR + goodVO.getGoodImage().getOriginalFilename()));

        User user = (User) request.getSession().getAttribute("user");
        //user.setUserId((Integer)request.getSession().getAttribute("userId"));
        System.out.println("==========="+user);

        System.out.println(request.getSession().getAttribute("userId"));
        int typeid = goodService.queryIdByName(goodVO.getTypeName());
        Type type = new Type(typeid);


        Good good = GoodConverter.converter(goodVO,goodVO.getGoodImage().getOriginalFilename(),user,type);
        goodService.fabu(good);
        return "redirect:/good/search";
    }

    //物品细节显示
    @RequestMapping("/details")
    public String details(int goodId,Model model){
        Good good = goodService.searchDetails(goodId);
        model.addAttribute("good",good);
        return "details";
    }



    //查询用户发布的物品
    @RequestMapping("/mygood")
    public String mygood(HttpServletRequest request,Model model){

        User user = (User)request.getSession().getAttribute("user");
        int userId = user.getUserId();
        List<Good> good = goodService.queryGood(userId);
        model.addAttribute("good",good);
        return "mygood";
    }


    //删除用户发布的
    @RequestMapping("/delete")
    public String deleteGood(int goodId){
        goodService.deleteGood(goodId);
        return "redirect:/good/mygood";
    }


}
