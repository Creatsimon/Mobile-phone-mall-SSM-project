package com.fx.entity;

import java.util.ArrayList;
import java.util.List;

public class Until {
    public static List<String> strToList(String imgPaths){
        List<String>str = new ArrayList<>();
        String imgPaths2[]=null;
        imgPaths2=imgPaths.split(",");
        for (String s:
                imgPaths2) {
            str.add(s);
        }
        return str;
    }
}
