package com.nic.service.impl;

import com.nic.mapper.AssetMapper;
import com.nic.pojo.Asset;
import com.nic.service.AssetServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Nic on 2017/6/5.
 *
 */
@Service
public class AssetServerImpl implements AssetServer {
    @Autowired
    private AssetMapper assetMapper;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return assetMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Asset record) {
        return assetMapper.insert(record);
    }

    @Override
    public int insertSelective(Asset record) {
        return assetMapper.insertSelective(record);
    }

    @Override
    public List<Asset> selectByPrimaryKey() {
        return assetMapper.selectByPrimaryKey();
    }

    @Override
    public int updateByPrimaryKeySelective(Asset record) {
        return assetMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Asset record) {
        return assetMapper.updateByPrimaryKey(record);
    }
}
