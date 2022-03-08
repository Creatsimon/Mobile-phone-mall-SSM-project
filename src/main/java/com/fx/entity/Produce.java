package com.fx.entity;

import java.math.BigDecimal;

public class Produce {
    private Integer id;
    private String imgPath;
    private String produceName;
    private String miaoshu;
    private BigDecimal price;
    private Integer produceTypeNo;
    private String produceNo;
    private String imgPaths;
    private String introduce;


    public Produce() {
    }

    public Produce(Integer id, String imgPath, String produceName, String miaoshu, BigDecimal price, Integer produceTypeNo, String produceNo, String imgPaths, String introduce) {
        this.id = id;
        this.imgPath = imgPath;
        this.produceName = produceName;
        this.miaoshu = miaoshu;
        this.price = price;
        this.produceTypeNo = produceTypeNo;
        this.produceNo = produceNo;
        this.imgPaths = imgPaths;
        this.introduce = introduce;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getTitle() {
        return produceName;
    }

    public void setTitle(String produceName) {
        this.produceName = produceName;
    }

    public String getDescribe() {
        return miaoshu;
    }

    public void setDescribe(String miaoshu) {
        this.miaoshu = miaoshu;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getProduceTypeNo() {
        return produceTypeNo;
    }

    public void setProduceTypeNo(Integer produceTypeNo) {
        this.produceTypeNo = produceTypeNo;
    }

    public String getProduceNo() {
        return produceNo;
    }

    public void setProduceNo(String produceNo) {
        this.produceNo = produceNo;
    }

    public String getImgPaths() {
        return imgPaths;
    }

    public void setImgPaths(String imgPaths) {
        this.imgPaths = imgPaths;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Produce{" +
                "id=" + id +
                ", imgPath='" + imgPath + '\'' +
                ", produceName='" + produceName + '\'' +
                ", miaoshu='" + miaoshu + '\'' +
                ", price=" + price +
                ", produceTypeNo=" + produceTypeNo +
                ", produceNo='" + produceNo + '\'' +
                ", imgPaths='" + imgPaths + '\'' +
                ", introduce='" + introduce + '\'' +
                '}';
    }
}
