package com.li.entity;



import java.util.Date;

/**
 * Created by 99234 on 2018/9/29.
 */
public class Employee {
    private int id;
    private String name;
    private String email;
    private String birth;
    private Date createTime;
    private Department department;

    public Employee() {
    }

    public Employee(int id, String name, String email, String birth, Date createTime, Department department) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.birth = birth;
        this.createTime = createTime;
        this.department = department;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", birth=" + birth +
                ", createTime=" + createTime +
                ", department=" + department +
                '}';
    }
}
