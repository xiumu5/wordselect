package org.xm.asktao.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Description:产品类
 * @Author： 朽木
 * @Date：Created in 11:07 2019/10/18 0018
 */
@Getter
@Setter
@ToString
public class Product {

    private int id; //产品ID

    private String englishName; //产品英文名

    private String name; //产品中文名

    private String picture; //图片路径

    private String content; //商品详情

    private String title; //标题

    private Integer lookTime; //查看次数

    private String createTime; //商品详情

}
