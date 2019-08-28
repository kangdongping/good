package com.kdp.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApplyVO {
    private String applyName;
    private String applyInfor;
    private String applyTel;


    //图片转换
    private MultipartFile applyImage;
}
