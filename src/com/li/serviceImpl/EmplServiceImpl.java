package com.li.serviceImpl;

import com.li.dao.DepartmentDao;
import com.li.dao.EmployeeDao;
import com.li.dao.UserDao;
import com.li.entity.Department;
import com.li.entity.Employee;
import com.li.entity.User;
import com.li.service.EmplService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 99234 on 2018/9/29.
 */
@Service
public class EmplServiceImpl implements EmplService {
    @Autowired
    private EmployeeDao employeeDao;
    @Autowired
    private DepartmentDao departmentDao;
    @Autowired
    private UserDao userDao;
    @Override
    public void add(Employee employee) {
        employeeDao.add(employee);
    }

    @Override
    public void update(Employee employee) {
        employeeDao.update(employee);
    }

    @Override
    public void delete(int id) {
        employeeDao.delete(id);
    }

    @Override
    public Employee queryById(int id) {
        return employeeDao.queryById(id);
    }

    @Override
    public List<Employee> queryAll() {
        return employeeDao.queryAll();
    }

    @Override
    public List<Department> queryAllDept() {
        return departmentDao.queryAllDept();
    }

    @Override
    public List<User> queryAllUser() {
        return userDao.queryAllUser();
    }
}
