package org.xm.asktao.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 *
 * @description
 * @author: xiumu
 * @create: 2019/5/9 8:16
 */
public class WordUtil {
    public static String getPicture(MultipartFile upload1) {
        String filename1 = upload1.getOriginalFilename();
        String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
        String newfilename1 = uuid+"_"+filename1;
        System.out.println("图片路径"+filename1);
        String newpath1 = "E:\\apache-tomcat-7.0.94\\webapps\\wordselect\\images\\"+newfilename1;
        //2. 将客户端上传的文件保存到服务端 images/
        File file1 = new File(newpath1);
        try {
            upload1.transferTo(file1);

        } catch (IOException e) {
            e.printStackTrace();
        }
        //3.将新增的刀具类持久化到数据库
        //3.1 保存图片路径
        String picturePath1 = "../images/"+newfilename1;

        return picturePath1;
    }
    public static String getRelPicture(MultipartFile upload1) {
        String filename1 = upload1.getOriginalFilename();
        String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
        String newfilename1 = uuid+"_"+filename1;
        System.out.println("图片路径"+filename1);
        String newpath1 = "/opt/app/apache-tomcat-7.0.94/webapps/cutter/images/"+newfilename1;
        //2. 将客户端上传的文件保存到服务端 images/
        File file1 = new File(newpath1);
        try {
            upload1.transferTo(file1);

        } catch (IOException e) {
            e.printStackTrace();
        }
        //3.将新增的刀具类持久化到数据库
        //3.1 保存图片路径


        return newpath1;
    }
}

