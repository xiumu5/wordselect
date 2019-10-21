package org.xm.asktao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.xm.asktao.mapper.ProductMapper;
import org.xm.asktao.pojo.Product;
import org.xm.asktao.service.ProductService;

/**
 * @Description:
 * @Author： 朽木
 * @Date：Created in 11:12 2019/10/18 0018
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductMapper productMapper;

    @Override
    public Product getById() {
        return productMapper.getById();
    }
}
