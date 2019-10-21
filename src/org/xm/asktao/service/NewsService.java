package org.xm.asktao.service;


import org.xm.asktao.pojo.News;

import java.util.ArrayList;
import java.util.List;

public interface NewsService {

    ArrayList<News> selectAll();

    News getById(String id);
}
