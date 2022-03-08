package com.fx.entity;

public class Type {
    private Integer id;
    private String imgPath;
    private String typeName;
    private Integer typeNo;
    private String path;
    private Integer produceTypeNo;

    public Type() {
    }

    public Type(Integer id, String imgPath, String typeName, Integer typeNo, String path, Integer produceTypeNo) {
        this.id = id;
        this.imgPath = imgPath;
        this.typeName = typeName;
        this.typeNo = typeNo;
        this.path = path;
        this.produceTypeNo = produceTypeNo;
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

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getTypeNo() {
        return typeNo;
    }

    public void setTypeNo(Integer typeNo) {
        this.typeNo = typeNo;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Integer getProduceTypeNo() {
        return produceTypeNo;
    }

    public void setProduceTypeNo(Integer produceTypeNo) {
        this.produceTypeNo = produceTypeNo;
    }

    @Override
    public String toString() {
        return "Type{" +
                "id=" + id +
                ", imgPath='" + imgPath + '\'' +
                ", typeName='" + typeName + '\'' +
                ", typeNo=" + typeNo +
                ", path='" + path + '\'' +
                ", produceTypeNo=" + produceTypeNo +
                '}';
    }
}
