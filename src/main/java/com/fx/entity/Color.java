package com.fx.entity;

public class Color {
    private Integer id;
    private String produceNo;
    private String color;
    private Integer colorId;

    public Color() {
    }

    public Color(Integer id, String produceNo, String color, Integer colorId) {
        this.id = id;
        this.produceNo = produceNo;
        this.color = color;
        this.colorId = colorId;
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

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getColorId() {
        return colorId;
    }

    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    @Override
    public String toString() {
        return "Color{" +
                "id=" + id +
                ", produceNo='" + produceNo + '\'' +
                ", color='" + color + '\'' +
                ", colorId=" + colorId +
                '}';
    }
}
