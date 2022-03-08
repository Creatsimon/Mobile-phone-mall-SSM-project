package com.fx.service.impl;

import com.fx.dao.ProduceDao;
import com.fx.entity.*;
import com.fx.service.ProduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProduceServicesImpl implements ProduceService {

    @Autowired
    private ProduceDao produceDao;

    @Override
    public List<Produce> findProduceByProductTypeNo(Integer produceTypeNo) {
        return produceDao.findProduceByProductTypeNo(produceTypeNo);
    }

    @Override
    public Produce findProduceByProduceNo(String ProduceNo) {
        return produceDao.findProduceByProduceNo(ProduceNo);
    }

    @Override
    public List<Ram> findAllRam(String produceNo) {
        return produceDao.findAllRam(produceNo);
    }

    @Override
    public List<Color> findAllColor(String produceNo) {
        return produceDao.findAllColor(produceNo);
    }

    @Override
    public Color findColorByProduceNo(String produceNo, Integer colorId) {
        return produceDao.findColorByProduceNo(produceNo,colorId);
    }

    @Override
    public Ram findRamByProduceNoAndRamId(String produceNo, Integer ramId) {
        return produceDao.findRamByProduceNoAndRamId(produceNo,ramId);
    }

    @Override
    public List<Recommend> findRecommend() {
        return produceDao.findRecommend();
    }

    @Override
    public List<lunboImgPath> findImg(String produceNo) {
        return produceDao.findImg(produceNo);
    }

    @Override
    public void addProduce(Produce produce) {
        produceDao.addProduce(produce);
    }

    @Override
    public void addColor(Color color) {
        produceDao.addColor(color);
    }

    @Override
    public void addRam(Ram ram) {
        produceDao.addRam(ram);
    }

    @Override
    public void addLunboImg(lunboImgPath lunboImgPath) {
        produceDao.addLunboImg(lunboImgPath);
    }

    @Override
    public void addIntroduceImg(introduceImgPath introduceImgPath) {
        produceDao.addIntroduceImg(introduceImgPath);
    }

    @Override
    public List<introduceImgPath> findIntroduceImg(String produceNo) {
        return produceDao.findIntroduceImg(produceNo);
    }

    @Override
    public List<Produce> findProduceByName(String produceName) {
        return produceDao.findProduceByName(produceName);
    }



    /*@Override
    public Version findVersion(Integer ProduceNo) {
        return produceDao.findVersion(ProduceNo);
    }*/
}
