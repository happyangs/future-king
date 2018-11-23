package com.ahuthj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Bryant on 2018.11.23
 */
@Controller
@RequestMapping(value="/manage")
public class ManageController {

    @ResponseBody
    @RequestMapping(value = "/index", produces = {"application/json;charset=UTF-8"})
    ModelAndView manageIndex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("thymeleaf/manage/index");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/login", produces = {"application/json;charset=UTF-8"})
    ModelAndView manageLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("thymeleaf/manage/login");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/table", produces = {"application/json;charset=UTF-8"})
    ModelAndView manageTable(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("thymeleaf/manage/table");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/main", produces = {"application/json;charset=UTF-8"})
    ModelAndView manageMain(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("thymeleaf/manage/main");
        return modelAndView;
    }
}
