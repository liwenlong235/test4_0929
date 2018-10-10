package com.li.service;


import com.li.entity.Department;
import com.li.entity.Employee;
import com.li.entity.User;

import java.util.List;

/**
 * Created by 99234 on 2018/9/29.
 */
public interface EmplService {
    public void add(Employee employee);
    public void update(Employee employee);
    public void delete(int id);
    public Employee queryById(int id);
    public List<Employee> queryAll();
    public List<Department> queryAllDept();
    public List<User> queryAllUser();
}
