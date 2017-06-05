package com.nic.service;

import com.nic.pojo.Asset;

import java.util.List;

/**
 * Created by Nic on 2017/6/5.
 * 业务接口
 */
public interface AssetServer {
    int deleteByPrimaryKey(Integer id);

    int insert(Asset record);

    int insertSelective(Asset record);

    List<Asset> selectByPrimaryKey();

    int updateByPrimaryKeySelective(Asset record);

    int updateByPrimaryKey(Asset record);
}