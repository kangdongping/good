package com.kdp.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Good {

    private int goodId;
    private String goodName;
    private String goodInfor;
    private Date goodDate;
    private String goodTel;
    private String goodLocal;
    private String goodImage;
    private User user;
    private Type type;

    public Good(String goodName, String goodInfor, Date goodDate, String goodTel, String goodLocal, String goodImage, User user, Type type) {
        this.goodName = goodName;
        this.goodInfor = goodInfor;
        this.goodDate = goodDate;
        this.goodTel = goodTel;
        this.goodLocal = goodLocal;
        this.goodImage = goodImage;
        this.user = user;
        this.type = type;
    }
}
