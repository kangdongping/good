package com.kdp.controller;

import com.kdp.converter.LoginConverter;
import com.kdp.converter.PassConverter;
import com.kdp.converter.UpdateConverter;
import com.kdp.converter.UserConverter;
import com.kdp.entity.Good;
import com.kdp.entity.User;
import com.kdp.service.GoodService;
import com.kdp.service.UserService;
import com.kdp.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    //Controller层调用Service层
    @Autowired
    private UserService userService;

    //注册
    @RequestMapping("/reg")
    public String reg(){
        return "regs";
    }


    @RequestMapping("/valid")
    @ResponseBody
    public ResultVO valid(@RequestBody ValidVO validVO){
        User user1 = userService.regName(validVO.getName());
        /*if("admin".equals(validVO.getName())){
            return new ResultVO(false);
        }*/
        if(user1!=null){
            return new ResultVO(false);
        }
        return  new ResultVO(true);
    }



    //处理注册
    @RequestMapping("/doreg")
    public String doreg(@ModelAttribute("userVO") @Valid UserVO userVO,BindingResult bindingResult,Model model){
        System.out.println(userVO);
        if(bindingResult.hasErrors()){
            return "regs";
        }

       User user1 = userService.regName(userVO.getName());
        if(user1!=null){
            model.addAttribute("MSG1","用户名重复");
            return "regs";
        }

        if(!userVO.getPassword().equals(userVO.getRepassword())){
            model.addAttribute("MSG2","密码不一致");
            return "regs";
        }
        User user = UserConverter.converter(userVO);
        userService.reg(user);
        return "login";
    }

    //登录
    @RequestMapping("/login")
    public String login(){
        return "login";
    }


    //处理登录
    @RequestMapping("/doLogin")
    public String doLogin(LoginVO loginVO,HttpServletRequest request,BindingResult bindingResult,Model model){
        if(bindingResult.hasErrors()){
            return "login";
        }
        //查到的名字等于输入的名字 判断是否存在用户
         //user1 = new User();
        User user1 = userService.regName(loginVO.getName());
        if(user1==null){
            model.addAttribute("MSG1","用户名不存在");
            return "login";
        }
        if(!user1.getUserPass().equals(loginVO.getPassword())){
            model.addAttribute("MSG2","密码错误");
            return "login";
        }

        User user = LoginConverter.converter(loginVO);
        User user2 = userService.login(user);
        request.getSession().setAttribute("userName",loginVO.getName());
        //request.getSession().setAttribute("userId",user.getUserId());
        //一般存取对象，直接调用对象的参数
        request.getSession().setAttribute("user",user2);
        return "index";
    }


    //退出登录
    @RequestMapping("/exist")
    public String exist(HttpServletRequest request){
        request.getSession().removeAttribute("userName");
        return "redirect:/user/login";
    }


    //跳转到userInfor.jsp界面
    @RequestMapping("/userInfor")
    public String person(){
        return "userInfor";
    }




    //查询个人信息
    @RequestMapping("/infor")
    public String personShow(Model model,HttpServletRequest request){
        //(String)request.getSession().getAttribute("userName")
        User user1 = (User)request.getSession().getAttribute("user");
        int userId = user1.getUserId();
        User user = userService.queryUser(userId);
        model.addAttribute("user",user);
        return "infor";
    }
    //修改个人信息
    @RequestMapping("/updateUser")
    public String updateUser(UpdateVO updateVO,Model model, HttpServletRequest request){
        System.out.println(updateVO);

        User user = UpdateConverter.converter(updateVO);
        System.out.println(user);
        //User user = (User) request.getSession().getAttribute("user");
        System.out.println("=======================");
        userService.updateUser(user);

        return "redirect:/user/infor";

    }


        //查询密码信息
        @RequestMapping("/pass")
        public String passShow(Model model,HttpServletRequest request){
            User user2 = (User)request.getSession().getAttribute("user");
            int userId2 = user2.getUserId();
            User user3 = userService.queryUser(userId2);
            model.addAttribute("user3",user3);
            return "pass";
        }

        //修改密码信息
        @RequestMapping("/updatePass")
        public String updatePass(PassVO passVO){

            User user1 = PassConverter.converter(passVO);
            userService.updatePass(user1);
            return "redirect:/user/pass";
        }





}
