package com.fx.service;

import com.fx.entity.*;

import java.util.List;

public interface ProduceService {
    List<Produce>findProduceByProductTypeNo(Integer produceTypeNo);

    Produce findProduceByProduceNo(String ProduceNo);

    //Version findVersion(Integer ProduceNo);

    List<Ram>findAllRam(String produceNo);

    List<Color>findAllColor(String produceNo);

    Color findColorByProduceNo(String produceNo,Integer colorId);

    Ram findRamByProduceNoAndRamId(String produceNo,Integer ramId);

    List<Recommend>findRecommend();

    List<lunboImgPath>findImg(String produceNo);

    void addProduce(Produce produce);

    void addColor(Color color);

    void addRam(Ram ram);

    void addLunboImg(lunboImgPath lunboImgPath);

    void addIntroduceImg(introduceImgPath introduceImgPath);

    List<introduceImgPath>findIntroduceImg(String produceNo);

    List<Produce>findProduceByName(String produceName);

}
