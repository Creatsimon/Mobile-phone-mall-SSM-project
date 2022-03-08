package com.fx.service.impl;

import com.fx.dao.TypeDao;
import com.fx.entity.Type;
import com.fx.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;

    @Override
    public List<Type> findPhoneType(Integer typeNo) {
        return typeDao.findPhoneType(typeNo);
    }

    @Override
    public Type findTypeByPath(String path) {
        return typeDao.findTypeByPath(path);
    }

    @Override
    public List<Type> findType() {
        return typeDao.findType();
    }
}
