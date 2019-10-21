package org.xm.asktao.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.xm.asktao.pojo.CargoDetail;
import org.xm.asktao.pojo.Product;
import org.xm.asktao.service.ProductService;

import javax.servlet.http.HttpSession;

/**
 * @Description: 产品方案控制器
 * @Author： 朽木
 * @Date：Created in 11:21 2019/10/18 0018
 */
@Controller
public class ProductController {
    @Autowired
    ProductService productService;//产品方案服务层

    //去产品方案详情页
    @RequestMapping("/toProductDetail")
    public String toProductDetil(HttpSession httpSession, String id) {
       Product product =  productService.getById();  //通过id获得产品方案
        System.out.println(product);
        httpSession.setAttribute("product",product); //将产品方案装到session域中

        return "redirect:863/productpresent.jsp";
    }

}
