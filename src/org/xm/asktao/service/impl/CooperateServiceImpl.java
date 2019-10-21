package org.xm.asktao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xm.asktao.mapper.CooperateMapper;
import org.xm.asktao.pojo.Cooperate;
import org.xm.asktao.service.CooperateService;

/**
 * @Description:
 * @Author： 朽木
 * @Date：Created in 9:26 2019/10/18 0018
 */
@Service
public class CooperateServiceImpl implements CooperateService {
    @Autowired
    CooperateMapper cooperateMapper;
    @Override
    public Cooperate getAll() {
        return cooperateMapper.getAll();
    }
}
