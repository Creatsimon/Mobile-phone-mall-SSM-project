package com.fx.entity;

public class Chart {
    String typeName;
    Integer productNum;

    public Chart() {
    }

    public Chart(String typeName, Integer productNum) {
        this.typeName = typeName;
        this.productNum = productNum;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getProductNum() {
        return productNum;
    }

    public void setProductNum(Integer productNum) {
        this.productNum = productNum;
    }

    @Override
    public String toString() {
        return "Chart{" +
                "typeName='" + typeName + '\'' +
                ", productNum=" + productNum +
                '}';
    }
}
