package com.ray.dao;

import com.ray.model.Store;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
@Repository
public interface StoreDao {
    public List<Store> getAllStore();

    public List<String> getStoreType();

    public int getEmptyStoreCount();

    public int getStoreCount();
}
