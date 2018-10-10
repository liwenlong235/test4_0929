package com.li.test;

import com.li.service.EmplService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by 99234 on 2018/9/29.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class Main {
    @Autowired
    private EmplService emplService;
    @Test
    public void query(){
        emplService.delete(1);
        System.out.println(emplService.queryAll());
        //System.out.println(emplService.queryAllDept());
    }
}
