package com.kdp.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

   private int userId;
   private String userName;
   private String userEmail;
   private String userTel;
   private String userPass;



}
