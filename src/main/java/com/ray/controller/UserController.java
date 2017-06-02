package com.ray.controller;

import com.ray.model.User;
import com.ray.service.CenterService;
import com.ray.service.StoreService;
import com.ray.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/3/22.
 */
@Controller
public class UserController {


    @Autowired
    private UserService userService;
    @Autowired
    private CenterService centerService;
    @Autowired
    private StoreService storeService;


    /***
     * value表示在浏览器输入的地址如：http://localhost:8080/simple-demo/demo
     * method可以不写，默认为GET，当处理POST请求时必须要写method = RequestMethod.POST，否则找不到地址
     *
     * @return 返回的是页面的地址，在配置文件InternalResourceViewResolver中配置prefix和suffix相当于最后返回/WEB-INF/jsp/demo1.jsp
     */

    //@RequestParam("username") String username,
    //@RequestParam("userpassword") String userpassword,
    @RequestMapping(value = "/showAllUser", method = RequestMethod.GET)
    public String showAllUser(Model model) {
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "WEB-INF/jsp/pages/tables/data.jsp";
    }

    @RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
    public String adminLogin(Model model) {
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "WEB-INF/jsp/index2.jsp";
    }

    @RequestMapping(value = "/getUserData", method = RequestMethod.POST)
    @ResponseBody
    public List<User> getUserData() {
        List<User> userList = userService.getAllUser();
        return userList;
    }


    @RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
    public String adLogin(Model model) {
        List<User> userList = userService.getAllUser();
        Integer userCount = userService.getUserCount();
        model.addAttribute("userList", userList);
        model.addAttribute("userCount", userCount);


        int centerC = centerService.getCenterCount();
        int centerEC = centerService.getEmptyCenterCount();
        model.addAttribute("cenCount", centerC);
        model.addAttribute("emptyCount", centerEC);

        List<String> typeList = storeService.getStoreType();
        int storeCount = storeService.getStoreCount();
        int emptyStoreCount = storeService.getEmptyStoreCount();
        model.addAttribute("typeList", typeList);
        model.addAttribute("storeCount", storeCount);
        model.addAttribute("emptyStoreCount", emptyStoreCount);

        return "WEB-INF/jsp/index2.jsp";
    }


    @RequestMapping(value = "/addNewUser", method = RequestMethod.POST)
    public String addNewUser(User user) {
        System.out.println("AffectRow = " + userService.addUser(user));
        return "WEB-INF/jsp/index2.jsp";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
//    @ResponseBody
    public String getUserJson(HttpServletRequest request,
                              @RequestParam("psssssssfile") MultipartFile file,
                              Model model
    ) {
        String path = "";
        String filename = "";
        System.out.println(file);
        if (!file.isEmpty()) {
            path = request.getServletContext().getRealPath("/image/");
            filename = file.getOriginalFilename();
            File filepath = new File(path, filename);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            try {
                file.transferTo(new File(path + File.separator + filename));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        model.addAttribute("path", "image" + File.separator + filename);

        //List<User> rs = userService.getAllUser();
        return "demoz.jsp";
    }

    @RequestMapping(value = "/testTag", method = RequestMethod.GET)
    public String testTag(HttpServletRequest request) {
        request.setAttribute("m", "Member");
        return "demoz.jsp";
    }
}
