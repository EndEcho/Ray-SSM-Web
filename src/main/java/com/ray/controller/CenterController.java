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

    @RequestMapping(value = "/updateCenterView", method = RequestMethod.GET)
    public String updateCenterView(@RequestParam("centerId") Integer centerId, Model model) {
        Center center = centerService.getCenterById(centerId);
        model.addAttribute("center", center);
        String[] lo = center.getCenterLocation().split(",");
        String loX = lo[0];
        String loY = lo[1];
        model.addAttribute("loX", loX);
        model.addAttribute("loY", loY);
        return "WEB-INF/jsp/pages/forms/updateCenter.jsp";
    }

    @RequestMapping(value = "/updateCenter", method = RequestMethod.POST)
    public String updateCenter(@RequestParam("centerX") double centerX,
                               @RequestParam("centerY") double centerY,
                               Model model, Center center) {
        if (centerX != 0 && centerY != 0) {
            center.setCenterLocation(centerX + "," + centerY);
        } else {
            center.setCenterLocation("0.00,0.00");
        }

        centerService.updateCenterById(center);
        return showAllCenter(model);
    }


    @RequestMapping(value = "/addNewCenter", method = RequestMethod.POST)
    public String addNewCenter(@RequestParam("centerX") double centerX,
                               @RequestParam("centerY") double centerY,
                               Center center, Model model) {
        center.setCenterLocation(centerX + "," + centerY);
        center.setIsFinished(0);
        center.setFloorMap("image/user.jpeg");
        center.setCenterImage("image/user.jpeg");
        centerService.addNewCenter(center);
//        return "WEB-INF/jsp/pages/tables/dataCenter.jsp";
        return showAllCenter(model);
    }


}
