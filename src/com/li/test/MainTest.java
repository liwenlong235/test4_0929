package com.li.test;

import com.li.entity.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 99234 on 2018/10/10.
 */
public class MainTest {
    public static void main(String[] args) {
        List<User> list = new ArrayList<>();
        for(int i=0;i<11;i++){
            list.add(new User(i+1,"name"+i,"school"+i,"地址"+i,"电话"+i,"邮箱"+i,"基本信息"+i));
        }
        System.out.println(list);
    }
}
