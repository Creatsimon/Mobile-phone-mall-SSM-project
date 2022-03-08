package com.fx.entity;

public class Recommend {

    private Integer id;
    private String produceNo;
    private String imgPath;
    private String imgId;

    public Recommend() {
    }

    public Recommend(Integer id, String produceNo, String imgPath, String imgId) {
        this.id = id;
        this.produceNo = produceNo;
        this.imgPath = imgPath;
        this.imgId = imgId;
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

    public String getImgId() {
        return imgId;
    }

    public void setImgId(String imgId) {
        this.imgId = imgId;
    }

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", produceNo='" + produceNo + '\'' +
                ", imgPath='" + imgPath + '\'' +
                ", imgId='" + imgId + '\'' +
                '}';
    }
}
