package com.ray.service;

import com.ray.dao.CenterDao;
import com.ray.model.Center;
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
public class CenterService {

    @Autowired
    CenterDao centerDao;

    @Transactional
    public List<Center> getAllCenter() {
        List<Center> centerList = new ArrayList<Center>();
        centerList = centerDao.getAllCenter();
        return centerList;
    }

    @Transactional
    public int addNewCenter(Center center) {
        int i = centerDao.addNewCenter(center);
        return i;
    }

    @Transactional
    public int getCenterCount() {
        int i = centerDao.getCenterCount();
        return i;
    }
}
