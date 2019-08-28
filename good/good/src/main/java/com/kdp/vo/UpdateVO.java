package com.kdp.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UpdateVO {
    private int userId;
    private String userName;
    private String userEmail;
    private String userTel;

}
