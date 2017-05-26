package com.ray.controller;

import com.ray.model.Center;
import com.ray.service.CenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/17 0017.
 */
@Controller
public class CenterController {

    @Autowired
    CenterService centerService;


    @RequestMapping(value = "/showAllCenter", method = RequestMethod.GET)
    public String showAllCenter(Model model) {
        List<Center> centerList = centerService.getAllCenter();
        model.addAttribute("centerList", centerList);
        return "WEB-INF/jsp/pages/tables/dataCenter.jsp";
    }

    @RequestMapping(value = "/addNewCenter", method = RequestMethod.POST)
    public String addNewCenter(@RequestParam("centerX") double centerX,
                               @RequestParam("centerY") double centerY,
                               Center center, Model model) {
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        System.out.println("**********************");
        center.setCenterLocation(centerX + "," + centerY);
        center.setIsFinished(0);
        center.setFloorMap("image/user.jpeg");
        center.setCenterImage("image/user.jpeg");
        System.out.println(centerX);
        System.out.println(centerY);
        System.out.println(center.toString());
        centerService.addNewCenter(center);
//        return "WEB-INF/jsp/pages/tables/dataCenter.jsp";
        return showAllCenter(model);
    }

    @RequestMapping(value = "/centerStateData", method = RequestMethod.GET)
    public String centerStateData(Model model) {
        int centerCount = centerService.getCenterCount();
        int emptyCenterCount = centerService.getEmptyCenterCount();
        model.addAttribute("centerCount", centerCount);
        model.addAttribute("emptyCenterCount", emptyCenterCount);
        return "index.jsp";
    }
}
