package com.fx.entity;

import java.util.List;

public class PageOrder {

    private Integer code;

    private String msg;

    private Integer count;

    private List<Orders> data;

    public PageOrder() {
    }

    public PageOrder(Integer code, String msg, Integer count, List<Orders> data) {
        this.code = code;
        this.msg = msg;
        this.count = count;
        this.data = data;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List<Orders> getData() {
        return data;
    }

    public void setData(List<Orders> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "PageOrder{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }
}
