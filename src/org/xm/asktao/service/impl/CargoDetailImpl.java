package org.xm.asktao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xm.asktao.mapper.CargoDetailMapper;
import org.xm.asktao.pojo.CargoDetail;
import org.xm.asktao.service.CargoDetailService;

/**
 * @Description:
 * @Author： 朽木
 * @Date：Created in 14:14 2019/10/17 0017
 */
@Service
public class CargoDetailImpl implements CargoDetailService {
   @Autowired
    CargoDetailMapper cargoDetailMapper;
    @Override
    public CargoDetail getById(String id) {

        return cargoDetailMapper.getById(id);
    }
}
