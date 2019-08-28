package com.kdp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Pattern;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {

    //与注册、登录前端的属性一致
    @Length(min=3,max=100,message = "用户名不能小于3位")
    @NotEmpty(message = "用户名不能为空")
    private String name;    //用户名


    @NotEmpty(message = "不能为空")
    private String email;    //邮箱

    @Length(min = 11,max = 11,message = "手机号必须11位")
    @NotEmpty(message = "不能为空")
    private String tel;    //手机号

    @NotEmpty(message = "不能为空")
    @Pattern(regexp = "[0-9a-zA-Z]{8,}",message = "密码长度至少为8位")
    private String password;  //密码

    @NotEmpty(message = "不能为空")
    @Pattern(regexp = "[0-9a-zA-Z]{8,}",message = "密码长度至少为8位")
    private String repassword;   //确认密码


}
