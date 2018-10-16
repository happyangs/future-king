package com.ahuthj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Bryant on 2018/10/16/0016
 */
@Controller
@RequestMapping(value="/")
public class ThymeleafController {
    @RequestMapping("/thymeleaf")
    public String index(ModelMap map){
        map.addAttribute("name","haozz");
        return "thymeleaf/thymeleaf";
    }
}
