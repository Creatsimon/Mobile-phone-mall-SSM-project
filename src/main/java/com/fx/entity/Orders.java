package com.fx.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Orders {
    private Integer id;
    private String orderId;
    private String produceName;
    private String color;
    private String ram;
    private String username;
    private Date orderTime;
    private String produceNo;
    private BigDecimal orderMoney;
    private String imgPath;
    private Integer isPay;
    private Integer produceTypeNo;

    public Orders() {
    }

    public Orders(Integer id, String orderId, String produceName, String color, String ram, String username, Date orderTime, String produceNo, BigDecimal orderMoney, String imgPath, Integer isPay, Integer produceTypeNo) {
        this.id = id;
        this.orderId = orderId;
        this.produceName = produceName;
        this.color = color;
        this.ram = ram;
        this.username = username;
        this.orderTime = orderTime;
        this.produceNo = produceNo;
        this.orderMoney = orderMoney;
        this.imgPath = imgPath;
        this.isPay = isPay;
        this.produceTypeNo = produceTypeNo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProduceName() {
        return produceName;
    }

    public void setProduceName(String produceName) {
        this.produceName = produceName;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getProduceNo() {
        return produceNo;
    }

    public void setProduceNo(String produceNo) {
        this.produceNo = produceNo;
    }

    public BigDecimal getOrderMoney() {
        return orderMoney;
    }

    public void setOrderMoney(BigDecimal orderMoney) {
        this.orderMoney = orderMoney;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public Integer getIsPay() {
        return isPay;
    }

    public void setIsPay(Integer isPay) {
        this.isPay = isPay;
    }

    public Integer getProduceTypeNo() {
        return produceTypeNo;
    }

    public void setProduceTypeNo(Integer produceTypeNo) {
        this.produceTypeNo = produceTypeNo;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", orderId='" + orderId + '\'' +
                ", produceName='" + produceName + '\'' +
                ", color='" + color + '\'' +
                ", ram='" + ram + '\'' +
                ", username='" + username + '\'' +
                ", orderTime=" + orderTime +
                ", produceNo='" + produceNo + '\'' +
                ", orderMoney=" + orderMoney +
                ", imgPath='" + imgPath + '\'' +
                ", isPay=" + isPay +
                ", produceTypeNo=" + produceTypeNo +
                '}';
    }
}
