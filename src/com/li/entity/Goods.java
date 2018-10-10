package com.li.entity;

/**
 * Created by 99234 on 2018/9/30.
 */
public class Goods {
    private int id;
    private String name;
    private double price;
    private String brankName;
    private String areaName;

    public Goods() {
    }

    public Goods(int id, String name, double price, String brankName, String areaName) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.brankName = brankName;
        this.areaName = areaName;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBrankName() {
        return brankName;
    }

    public void setBrankName(String brankName) {
        this.brankName = brankName;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", brankName='" + brankName + '\'' +
                ", areaName='" + areaName + '\'' +
                '}';
    }
}
