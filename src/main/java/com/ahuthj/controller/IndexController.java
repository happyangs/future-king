package com.ahuthj.controller;

import com.ahuthj.common.model.Response;
import com.ahuthj.common.model.Result;
import com.ahuthj.model.BkConfig;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductPicture;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductPictureService;
import com.ahuthj.service.BkProductService;
import com.ahuthj.util.JsonUtil;
import org.apache.commons.collections4.CollectionUtils;
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
import java.util.ArrayList;
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

    @Autowired
    private BkProductPictureService bkProductPictureService;

    @RequestMapping("/index")
    public ModelAndView index(@ModelAttribute ProductQueryVo productQueryVo,
                        HttpServletResponse response,
                        HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        List<BkConfig> configList = new ArrayList<>();
        BkConfig bkConfig = new BkConfig();
        bkConfig.setConfigType("HTML1");
        bkConfig.setCode(0);
        configList.add(bkConfig);

        BkConfig bkConfig1 = new BkConfig();
        bkConfig1.setConfigType("数据库");
        bkConfig1.setCode(1);
        configList.add(bkConfig1);

        ProductQueryVo productQuery = new ProductQueryVo();
        productQuery.setPageNum(0);
        productQuery.setPageSize(5);
        Result<BkProduct> bkProductList = bkProductService.pageQuery(productQuery);
        logger.info(JsonUtil.obj2String(bkProductList));
        modelAndView.addObject("bkProductList",bkProductList);
        modelAndView.addObject("configList",configList);
        modelAndView.setViewName("thymeleaf/index");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/detail/{productId}", produces = {"application/json;charset=UTF-8"})
    ModelAndView queryDetail(@PathVariable("productId") int productId){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("thymeleaf/product_detail");
        List<Integer> list = new ArrayList<>();list.add(productId);
        List<BkProductPicture> pictureList = bkProductPictureService.findPictureByProductId(list);
        List<BkProduct> productList = bkProductService.findByProductId(list);
        logger.info("============"+JsonUtil.obj2String(pictureList));
        modelAndView.addObject("pictureList",pictureList);
        modelAndView.addObject("product",productList.get(0));
        return modelAndView;
    }

}
