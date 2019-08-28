package com.kdp.dao;





import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class HouseDAOTest {

   /* @Autowired
    private HouseDAO houseDAO;

    @Test
    public void testFabu(){
        User user = new User();
        user.setUserId(1);
        House house = new House("a","二房",100.00,200.00,new Date(),"福建","厦门","1233456","信息","d:/imgs/a.jpg",user);
        houseDAO.fabu(house);
    }


    @Test
    public void test22(){
        HouseSearchVO searchVO = new HouseSearchVO();
        searchVO.setName("a");
        searchVO.setMinRect(100.00);
        searchVO.setMaxRect(110.00);
        PageHelper.startPage(1,2);
        List<House> list = houseDAO.search(searchVO);
        PageInfo<House> houses = new PageInfo<>(list);
        houses.getList();
        System.out.println(houses);
       *//* for(House h:list){
            System.out.println(h);
        }*//*
    }*/

}
