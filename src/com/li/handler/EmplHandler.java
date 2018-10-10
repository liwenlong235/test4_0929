package com.li.handler;

import com.alibaba.fastjson.JSON;
import com.li.entity.Department;
import com.li.entity.Employee;
import com.li.entity.Goods;
import com.li.entity.User;
import com.li.service.EmplService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.PrintWriter;
import java.util.*;

/**
 * Created by 99234 on 2018/9/29.
 */
@Controller
public class EmplHandler {
    @Autowired
    private EmplService emplService;

    @RequestMapping("input")
    public String input(Integer id, ModelMap modelMap){
        if(id!=null){
            Employee employee = emplService.queryById(id);
            modelMap.addAttribute("empl",employee);
        }
        List<Department> depts = emplService.queryAllDept();
        modelMap.addAttribute("depts",depts);
        return "input";
    }

    @RequestMapping("add")
    public String add(String name,String email,String birth,int did,ModelMap modelMap){
        Employee employee = new Employee(-1,name,email,birth,new Date(),new Department(did,"a"));
        emplService.add(employee);
        return "forward:info";
    }
    @RequestMapping("update")
    public String update(int id,String name,String email,String birth,int did,ModelMap modelMap){
        Employee employee = new Employee(id,name,email,birth,new Date(),new Department(did,"a"));
        emplService.update(employee);
        return "forward:info";
    }
    @RequestMapping("info")
    public String query(ModelMap modelMap){
        List<Employee> employees = emplService.queryAll();
        modelMap.addAttribute("empls",employees);
        return "list";
    }
    @RequestMapping("delete")
    @ResponseBody
    public String delete(int id){
        System.out.println(id);
        emplService.delete(id);
        return "ok";
    }
    @RequestMapping("returnIndex")
    public String index(){
        return "forward:index.jsp";
    }

    @RequestMapping("list")
    @ResponseBody
    public Map<String,Object> listProduct(Integer limit,Integer offset){
        Map<String,Object> map = new HashMap<>();
        List<Goods> list = new ArrayList<>();
        for(int i=offset;i<limit+offset;i++){
            Goods goods = new Goods();
            goods.setId(i);
            goods.setName("商品"+i);
            goods.setPrice(i*100);
            goods.setBrankName("品牌名称"+i);
            goods.setAreaName("产地"+i);
            list.add(goods);
        }
        map.put("total",100);
        map.put("rows",list);
        return map;
    }

    /*@RequestMapping("userInfo")
    public String queryUser(ModelMap modelMap){
        List<User> list = emplService.queryAllUser();
        modelMap.addAttribute("users",list);
        return "show";
    }*/
     @RequestMapping("userInfo")
     @ResponseBody
    public void queryUser(PrintWriter pw){
        List<User> list = emplService.queryAllUser();
        Object json = JSON.toJSON(list);
        pw.print(json);
        pw.close();
    }
    @RequestMapping("userShow")
    public String userShow(){
        return "show";
    }
}
