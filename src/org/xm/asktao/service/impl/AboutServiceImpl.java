package org.xm.asktao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xm.asktao.mapper.AboutMapper;
import org.xm.asktao.pojo.About;
import org.xm.asktao.service.AboutService;

/**
 * @Description:
 * @Author： 朽木
 * @Date：Created in 11:23 2019/10/17 0017
 */
@Service
public class AboutServiceImpl implements AboutService {
    @Autowired
    AboutMapper aboutMapper;
    @Override
    public About selectAll() {
        return aboutMapper.selectAll();
    }
}
