package com.li.dao;

import com.li.entity.Employee;

import java.util.List;

/**
 * Created by 99234 on 2018/9/29.
 */
public interface EmployeeDao {
    public void add(Employee employee);
    public void update(Employee employee);
    public void delete(int id);
    public Employee queryById(int id);
    public List<Employee> queryAll();
}
