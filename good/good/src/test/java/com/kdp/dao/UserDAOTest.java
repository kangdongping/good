package com.kdp.dao;


import com.kdp.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserDAOTest {
   /* @Autowired
    private UserDAO userDAO;

    @Test
    public void t(){
        User user = new User();
        user.setUserName("lo");
        user.setUserEmail("123@123.com");
        user.setUserTel("12345");
        user.setUserId(7);
        userDAO.updateUser(user);
    }*/

   @Autowired
    private ApplyDAO applyDAO;

   @Test
    public void t(){
       System.out.println(applyDAO.queryGoodByName("旺旺"));
   }




}
