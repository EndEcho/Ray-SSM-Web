package com.ray.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by GengRui
 * on 2017/5/25 0025.
 */
@Controller
public class IndexController {
    @RequestMapping(value = "/addNewCenterPage", method = RequestMethod.GET)
    public String addNewCenterPage() {
        return "WEB-INF/jsp/pages/forms/advanced.jsp";
    }

    @RequestMapping(value = "/BMap", method = RequestMethod.GET)
    public String BMap() {
        return "WEB-INF/jsp/pages/BMap.jsp";
    }
}
