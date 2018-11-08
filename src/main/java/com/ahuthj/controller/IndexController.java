package com.ahuthj.controller;

import com.ahuthj.model.BkProduct;
import com.ahuthj.service.BkProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Bryant on 2018/10/16/0016
 */
@Controller
@RequestMapping(value="/")
public class IndexController {

    @Autowired
    private BkProductService bkProductService;

    @RequestMapping("/index")
    public String index(Model model){

        List<BkProduct> bkProductList = bkProductService.findAllProduct();
        model.addAttribute("bkProductList",bkProductList);
        return "thymeleaf/index";
    }

}
