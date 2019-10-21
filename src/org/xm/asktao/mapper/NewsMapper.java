package org.xm.asktao.mapper;

import org.xm.asktao.pojo.About;
import org.xm.asktao.pojo.News;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @description
 * @author: 朽木
 * @create: 2019-10-17 13:40:54
 **/

public interface NewsMapper {

    ArrayList<News> selectAll();

    News getById(String id);
}
