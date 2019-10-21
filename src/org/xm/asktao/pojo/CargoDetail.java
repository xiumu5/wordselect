package org.xm.asktao.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Description: 产品详情页面
 * @Author： 朽木
 * @Date：Created in 14:07 2019/10/17 0017
 */
@Getter
@Setter
@ToString
public class CargoDetail {
    private int id;  //id
    private String content; //内容
    private String picture;//图片路径
    private String time;//发布时间
    private int lookTimes;//查看次数
    private String title;//标题

}
