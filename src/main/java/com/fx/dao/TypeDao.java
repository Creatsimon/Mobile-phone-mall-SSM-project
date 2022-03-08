package com.fx.dao;

import com.fx.entity.Type;

import java.util.List;

public interface TypeDao {
    List<Type> findPhoneType(Integer typeNo);

    Type findTypeByPath(String path);

    List<Type>findType();

}
