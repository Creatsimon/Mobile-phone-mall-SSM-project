package com.fx.service;

import com.fx.entity.Type;

import java.util.List;

public interface TypeService {
    List<Type>findPhoneType(Integer typeNo);

    Type findTypeByPath(String path);

    List<Type>findType();
}
