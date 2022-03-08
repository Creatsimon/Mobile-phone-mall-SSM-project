package com.fx.entity;

public class Version {

    private Integer id;
    private String produceNo;
    private String ram;
    private String color;
    private String introduce;

    public Version() {
    }

    public Version(Integer id, String produceNo, String ram, String color, String introduce) {
        this.id = id;
        this.produceNo = produceNo;
        this.ram = ram;
        this.color = color;
        this.introduce = introduce;
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

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Version{" +
                "id=" + id +
                ", produceNo='" + produceNo + '\'' +
                ", ram='" + ram + '\'' +
                ", color='" + color + '\'' +
                ", introduce='" + introduce + '\'' +
                '}';
    }
}
