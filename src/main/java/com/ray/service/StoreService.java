package com.ray.service;

import com.ray.dao.StoreDao;
import com.ray.model.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
@Service
public class StoreService {

    @Autowired
    private StoreDao storeDao;

    @Transactional
    public List<Store> getAllStore() {
        List<Store> storeList = new ArrayList<Store>();
        storeList = storeDao.getAllStore();
        return storeList;
    }

    public List<String> getStoreType() {
        List<String> typeList = storeDao.getStoreType();
        return typeList;
    }


    public int getEmptyStoreCount() {
        int emptyStoreCount = storeDao.getEmptyStoreCount();
        return emptyStoreCount;
    }

    public int getStoreCount() {
        int storeCount = storeDao.getStoreCount();
        return storeCount;

    }
}
