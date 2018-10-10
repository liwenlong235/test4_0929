package com.li.entity;

/**
 * Created by 99234 on 2018/10/9.
 */
public class User {
    private int id;
    private String name;
    private String school;
    private String address;
    private String tel;
    private String email;
    private String basic;

    public User() {
    }

    public User(int id, String name, String school, String address, String tel, String email, String basic) {
        this.id = id;
        this.name = name;
        this.school = school;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.basic = basic;
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

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBasic() {
        return basic;
    }

    public void setBasic(String basic) {
        this.basic = basic;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", school='" + school + '\'' +
                ", address='" + address + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", basic='" + basic + '\'' +
                '}';
    }
}
