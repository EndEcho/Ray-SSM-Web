package com.ray.dao;

import com.ray.model.Center;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
@Repository
public interface CenterDao {
    public List<Center> getAllCenter();

    public int addNewCenter(Center center);

    public int getCenterCount();

    public int getEmptyCenterCount();
}
