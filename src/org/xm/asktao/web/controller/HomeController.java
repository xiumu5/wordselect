package org.xm.asktao.web.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.xm.asktao.pojo.*;
import org.xm.asktao.service.*;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @description 主页的控制器
 * @author: 朽木
 * @create: 2019-10-17 10:48:58
 **/
@Controller
public class HomeController {
    @Autowired
    AboutService aboutService; //关于我们的服务层
    @Autowired
    CargoDetailService cargoDetailService; //商品详情的服务层
    @Autowired
    NewsService newsService; //新闻动态服务层
    @Autowired
    CooperateService cooperateService;//合作案例服务层
    //获得主页上所有的信息
    @RequestMapping("/index")
    public String getAllMessage(HttpSession httpSession) {
        Cooperate cooperate =  cooperateService.getAll();//获得所有的合作案例

        httpSession.setAttribute("cooperate",cooperate); //将合作案例存入session

        About about = aboutService.selectAll(); //获得所有的关于我们的信息

        httpSession.setAttribute("about",about);  //将关于我们的信息存入session

        List<News> newslist = new ArrayList<>();

        ArrayList<News> newses = newsService.selectAll();//获得所有的新闻


         //判断新闻是否为置顶，是置顶加入到list中交给前端页面展示
        for(News news : newses) {
            if(news.getIsTop() == 1) {
                newslist.add(news);

            }

        }
        httpSession.setAttribute("news",newslist);  //将要展示的新闻存放到session中
            return "redirect:863/index.jsp";
    }
    //去到商品详情页
    @RequestMapping("/toDetil")
    public String toDetil(HttpSession httpSession,String id) {

        CargoDetail cargoDetail = cargoDetailService.getById(id);//通过id找到对应的商品详情

        httpSession.setAttribute("cargoDetail",cargoDetail);  //将商品详情存入session

        return "redirect:863/present.jsp";
    }


    //去到新闻详情页面
    @RequestMapping("toNewsDetail")
    public String toNewsDetail (String id,HttpSession httpSession) {

        News news = newsService.getById(id); //获得要查看的新闻Id

        System.out.println(news+"拿到新闻了");
        httpSession.setAttribute("news",news); //加入到session中

        return "redirect:863/detail.jsp";

    }

}
