package com.li.handler;

import com.alibaba.fastjson.JSON;
import com.li.entity.User;
import com.li.service.EmplService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 99234 on 2018/10/10.
 */
@WebServlet("/aaa")
public class ServletTest extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //List<User> list = emplService.queryAllUser();
        List<User> list = new ArrayList<>();
        for(int i=1;i<11;i++){
            list.add(new User(i,"name"+i,"school"+i,"地址"+i,"电话"+i,"邮箱"+i,"基本信息"+i));
        }
        Object json = JSON.toJSON(list);
        PrintWriter pw = resp.getWriter();
        pw.print(json);
        pw.close();
    }
}
