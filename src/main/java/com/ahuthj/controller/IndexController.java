package com.ahuthj.controller;

import com.ahuthj.common.model.Response;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Bryant on 2018/10/16/0016
 */
@Controller
@RequestMapping(value="/")
public class IndexController {

    private static Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private BkProductService bkProductService;

    @RequestMapping("/index")
    public ModelAndView index(@ModelAttribute ProductQueryVo productQueryVo,
                        HttpServletResponse response,
                        HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        List<BkProduct> bkProductList = bkProductService.findAllProduct();
        modelAndView.addObject("bkProductList",bkProductList);
        modelAndView.addObject("totalCount",51);
        modelAndView.setViewName("thymeleaf/index");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/detail/{productId}", produces = {"application/json;charset=UTF-8"})
    ModelAndView queryDetail(@PathVariable("productId") int productId){
        ModelAndView modelAndView = new ModelAndView();
       // modelAndView.addObject("productId",productId);
        modelAndView.setViewName("thymeleaf/product_detail");
        return modelAndView;
    }

}
