package com.fx.entity;

public class introduceImgPath {

    private Integer id;
    private String produceNo;
    private String imgPath;

    public introduceImgPath() {
    }

    public introduceImgPath(Integer id, String produceNo, String imgPath) {
        this.id = id;
        this.produceNo = produceNo;
        this.imgPath = imgPath;
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

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    @Override
    public String toString() {
        return "introduceImgPath{" +
                "id=" + id +
                ", produceNo='" + produceNo + '\'' +
                ", imgPath='" + imgPath + '\'' +
                '}';
    }
}
