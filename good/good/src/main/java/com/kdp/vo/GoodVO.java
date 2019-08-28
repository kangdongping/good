package com.kdp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

//发布前端的字段
@Data
@AllArgsConstructor
@NoArgsConstructor
public class GoodVO {
    private String typeName;
    private String goodName;
    private String goodInfor;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date goodDate;
    private String goodLocal;
    private String goodTel;

    //图片转换
    private MultipartFile goodImage;
}

