package com.kdp.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Apply {
    private int applyId;
    private String applyName;
    private String applyInfor;
    private String applyTel;
    private String applyImage;
    private User user;
    private Good good;
}
