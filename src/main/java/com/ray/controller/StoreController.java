package com.ray.controller;

import com.ray.model.Center;
import com.ray.model.Store;
import com.ray.service.CenterService;
import com.ray.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/6/1 0001.
 */
@Controller
public class StoreController {
    @Autowired
    StoreService storeService;
    @Autowired
    CenterService centerService;

    @RequestMapping(value = "/showAllStore", method = RequestMethod.GET)
    public String showAllStore(Model model) {
        List<Store> storeList = storeService.getAllStore();
        model.addAttribute("storeList", storeList);
        return "WEB-INF/jsp/pages/tables/dataStore.jsp";
    }

    @RequestMapping(value = "/addNewStoreView", method = RequestMethod.GET)
    public String addNewStoreView(Model model) {
        List<Center> centerList = centerService.getAllCenter();
        model.addAttribute("centerList", centerList);
        return "WEB-INF/jsp/pages/forms/addStore.jsp";
    }

    @RequestMapping(value = "/addNewStore", method = RequestMethod.POST)
    public String addNewStore(
            @RequestParam("centerSelect") String hasCenterId,
            @RequestParam("storeNum") String storeNum,

            Model model, Store store) {
        String[] s = hasCenterId.split(",");
        store.setCenterId(Integer.parseInt(s[1]));
        String storeId = s[1] + "0" + store.getStoreFloor() + storeNum;
        store.setStoreId(Integer.parseInt(storeId));
        store.setStoreState("0");
        storeService.addNewStore(store);
        return showAllStore(model);
    }

    @RequestMapping(value = "/getStoreCountByType", method = RequestMethod.GET)
    @ResponseBody
    public List getStoreCountByType(Model model) {
        List list = storeService.getStoreCountByType();
        if (list.size() < 6) {
            for (int i = list.size(); i < 6; i++) {
                list.add("{SC=0, storeType=null}");
            }
        }
        return list;
    }
}
