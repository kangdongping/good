package com.kdp.controller;


import com.kdp.converter.ApplyConverter;
import com.kdp.entity.Apply;
import com.kdp.entity.Good;
import com.kdp.entity.User;
import com.kdp.service.ApplyService;
import com.kdp.vo.ApplyVO;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/apply")
public class ApplyController {

    @Autowired
    private ApplyService applyService;


    //图片显示处理
    public static final String UPLOAD_DIR = "C:\\Users\\Administrator\\Desktop\\good\\good\\src\\main\\webapp\\images\\";
    @RequestMapping("/images")
    public String images(String applyImage, HttpServletResponse response) throws IOException {
        IOUtils.copy(new FileInputStream(UPLOAD_DIR + applyImage),response.getOutputStream());
        return null;
    }



    //显示我的申请物的信息
    @RequestMapping("myapply")
    public String myapply(Model model, HttpServletRequest request){

        User user = (User) request.getSession().getAttribute("user");
        int userId = user.getUserId();
        List<Apply> apply = applyService.queryApply(userId);
        model.addAttribute("apply",apply);
        return "myapply";
    }

    //跳转到addApply.jsp页面
    @RequestMapping("/ApplyShow")
    public String ApplyShow(String goodName, HttpSession session){
        session.setAttribute("goodName",goodName);
        return "addApply";
    }


    @RequestMapping("/addApply")
    public String addApply(ApplyVO applyVO, HttpServletRequest request) throws IOException {

        String goodName = (String) request.getSession().getAttribute("goodName");
        System.out.println(goodName);
        applyVO.getApplyImage().transferTo(new File(UPLOAD_DIR + applyVO.getApplyImage().getOriginalFilename()));
        User user = (User) request.getSession().getAttribute("user");

        Good good = applyService.queryGoodByName(goodName);
        System.out.println(good);
        Apply apply = ApplyConverter.converter(applyVO,applyVO.getApplyImage().getOriginalFilename(),good,user);
        applyService.addApply(apply);
        return "redirect:/good/search";
    }
}
