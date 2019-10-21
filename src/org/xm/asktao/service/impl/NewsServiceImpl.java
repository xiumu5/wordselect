package org.xm.asktao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xm.asktao.mapper.AboutMapper;
import org.xm.asktao.mapper.NewsMapper;
import org.xm.asktao.pojo.About;
import org.xm.asktao.pojo.News;
import org.xm.asktao.service.AboutService;
import org.xm.asktao.service.NewsService;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @Description:
 * @Author： 朽木
 * @Date：Created in 11:23 2019/10/17 0017
 */
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    NewsMapper newsMapper;

    @Override
    public ArrayList<News> selectAll() {
        return newsMapper.selectAll();
    }

    @Override
    public News getById(String id) {
        return newsMapper.getById(id);
    }
}
