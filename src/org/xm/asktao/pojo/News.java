package org.xm.asktao.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Description: 新闻动态类
 * @Author：    朽木
 * @Date：Created in 16:38 2019/10/17 0017
 */
@Getter
@Setter
@ToString
public class News {
    private int id; //id
    private String title;  //标题
    private String content; //内容
    private String time; //创建时间
    private int lookTimes; //查看次数
    private int isTop; //是否置顶
    private String picture; //图片链接
}
