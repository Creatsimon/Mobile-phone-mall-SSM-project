package com.fx.entity;

import java.math.BigDecimal;

public class Ram {
    private Integer id;
    private String produceNo;
    private String ram;
    private Integer ramId;
    private BigDecimal price;

    public Ram() {
    }

    public Ram(Integer id, String produceNo, String ram, Integer ramId, BigDecimal price) {
        this.id = id;
        this.produceNo = produceNo;
        this.ram = ram;
        this.ramId = ramId;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProduceNo() {
        return produceNo;
    }

    public void setProduceNo(String produceNo) {
        this.produceNo = produceNo;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public Integer getRamId() {
        return ramId;
    }

    public void setRamId(Integer ramId) {
        this.ramId = ramId;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Ram{" +
                "id=" + id +
                ", produceNo='" + produceNo + '\'' +
                ", ram='" + ram + '\'' +
                ", ramId=" + ramId +
                ", price=" + price +
                '}';
    }
}
