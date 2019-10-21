package org.xm.asktao.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Description: 关于我们基类
 * @Author： 朽木
 * @Date：Created in 10:28 2019/10/17 0017
 */

@Getter
@Setter
@ToString
public class About {
    private int id; //id
    private String content; //文本类容
    private String video; //视频
}
