package com.fx.convert;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDataConvert implements Converter<String, Date> {
    @Override
    public Date convert(String source) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date=sdf.parse(source);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
        return date;
    }
}
