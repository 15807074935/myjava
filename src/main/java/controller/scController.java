package controller;

import Utils.myUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.goods;
import pojo.user;
import pojo.sc;
import service.goodsService;
import service.scService;
import service.userService;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/sc")
@Controller
public class scController {

    @Autowired
    goodsService gs;
    @Autowired
    scService ss;
    @Autowired
    userService us;

    @RequestMapping("/addsc")
    public void addSc(int spid, HttpServletRequest request, HttpServletResponse response){
        response.setContentType("text/html;charset=UTF-8");
        Cookie cookie[]=request.getCookies();
        Cookie cke= myUtils.getCookie(cookie,"user_name");
        String user_name=cke.getValue();
        if(cke!=null){
            user u=us.getOneUser(user_name);
            sc sc1=new sc();
            sc1.setGoods_id(spid);
            sc1.setUser_id(u.getUser_id());
            sc sc2=ss.getOneSc(sc1);
            if(sc2==null){
                if(ss.addSc(sc1)>0){
                    try {
                        response.getWriter().write("加入购物车成功");
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }else{
                    try {
                        response.getWriter().write("加入购物车失败");
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }else{
                try {
                    response.getWriter().write("购物车已有该商品，加入购物车失败");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    @RequestMapping("/getsc")
    public String getSc(Model m,HttpServletRequest request){
        List<sc> sclist=new ArrayList<>();

        List<goods> goodslist=new ArrayList<>();
        List<File> imagelist=new ArrayList<>();

        Cookie cookie[]=request.getCookies();
        Cookie cke= myUtils.getCookie(cookie,"user_name");
        String user_name=cke.getValue();
        if(cke!=null){
            user u=us.getOneUser(user_name);
            sclist=ss.getSomeSc(u.getUser_id());
            for(int i=0;i<sclist.size();i++){
                goods g=gs.getOneGoods(sclist.get(i).getGoods_id());
                if(g.getAmount()==1)
                 goodslist.add(g);
            }
            ServletContext servletContext=request.getServletContext();
            for(int i=0;i<goodslist.size();i++){
                String imgpath=servletContext.getRealPath(goodslist.get(i).getImgPath());
                File file =new File(imgpath);
                imagelist.add(file);
            }
            m.addAttribute("imglist",imagelist);
            m.addAttribute("goodslist",goodslist);
            m.addAttribute("size",goodslist.size());
        }
       return "addcar";
    }
    @RequestMapping("/delsc")
    public String delsc(int spid,Model m,HttpServletRequest request){
        Cookie cookie[]=request.getCookies();
        Cookie cke= myUtils.getCookie(cookie,"user_name");
        String user_name=cke.getValue();
        if(cke!=null){
            user u=us.getOneUser(user_name);
            sc s=new sc();
            s.setUser_id(u.getUser_id());
            s.setGoods_id(spid);
            ss.deleteSc(s);
    }
        getSc(m,request);
        return "addcar";
  }
}
