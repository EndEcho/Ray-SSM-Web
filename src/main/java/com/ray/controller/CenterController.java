package com.ray.controller;

import com.ray.model.Center;
import com.ray.service.CenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        return "";
    }

    @RequestMapping(value = "/addNewCenter", method = RequestMethod.GET)
    public int addNewCenter(Center center) {
        int i = centerService.addNewCenter(center);
        return i;
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
