package controller;

import Utils.myUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.goods;
import pojo.trade;
import pojo.user;
import service.goodsService;
import service.tradeService;
import service.userService;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RequestMapping("/trade")
@Controller
public class tradeController {
    @Autowired
    tradeService ts;
    @Autowired
    userService us;
    @Autowired
    goodsService gs;
    @RequestMapping("/addtrade")
    public String addTrade(int spid, Model m, HttpServletRequest request){

        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateNowStr = sdf.format(d);

        trade t=new trade();
        t.setTradedate(dateNowStr);
        t.setGoods_id(spid);
        t.setComplete("确认收货");
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        t.setUser_id(u.getUser_id());
        goods g=gs.getOneGoods(spid);
        g.setAmount(0);
        if(gs.goodsUpdate(g)>0)
        ts.TradeInsert(t);
        return "cg";
    }
    @RequestMapping("/sellertrade")
    public String sellTrade(Model m,HttpServletRequest request){
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        List<goods> goodslist=new ArrayList<>();
        List<trade> tlist=new ArrayList<>();//卖出
        List<goods> selllist=new ArrayList<>();//卖出
        List<user> userlist=new ArrayList<>();
        List<goods> list=new ArrayList<>();
        list=gs.getSomeGoods(u.getUser_id());
        List<trade> tradelist=ts.getAllTrade();
        for(int i=0;i<list.size();i++){
            for(int j=0;j<tradelist.size();j++){
                if(list.get(i).getGoods_id()==tradelist.get(j).getGoods_id()){
                    selllist.add(list.get(i));
                }
            }
        }
        for(int i=0;i<selllist.size();i++){
            trade t=ts.getOneTrade(selllist.get(i).getGoods_id());
            tlist.add(t);
        }
        List<goods> finishgoods=new ArrayList<>();
        List<trade> finishtrade=new ArrayList<>();
        for(int i=0;i<tlist.size();i++){
            if(tlist.get(i).getComplete().equals("到货")){
                finishtrade.add(tlist.get(i));
                goods g=gs.getOneGoods(tlist.get(i).getGoods_id());
                finishgoods.add(g);
            }
        }
        List<user> finishuser=new ArrayList<>();
        for(int i=0;i<finishtrade.size();i++){
            user buy=us.getIdUser(finishtrade.get(i).getUser_id());
            finishuser.add(buy);
        }
        for(int i=0;i<list.size();i++){
                if(list.get(i).getAmount()!=0){
                    goodslist.add(list.get(i));
                }
        }

        for(int i=0;i<tlist.size();i++){
            user buy=us.getIdUser(tlist.get(i).getUser_id());
            userlist.add(buy);
        }
        m.addAttribute("tlist",tlist);
        m.addAttribute("goodslist",goodslist);
        m.addAttribute("selllist",selllist);
        m.addAttribute("userlist",userlist);
        m.addAttribute("finishuser",finishuser);
        m.addAttribute("finishgoods",finishgoods);
        m.addAttribute("finishtrade",finishtrade);
        return "sjzx";
    }
    @RequestMapping("/goodsdel")
    public String goodsDel(int spid,Model m,HttpServletRequest request) {
        gs.goodsDelete(spid);
        sellTrade(m, request);
        return "sjzx";
    }
    @RequestMapping("/editgoods")
    public String editGoods(String brand,String xh,String color,String prices,String goods_change,String goods_name,int goods_id,HttpServletRequest request,Model m){
        goods g=new goods();
        g.setGoods_id(goods_id);
        g.setBrand(brand);
        g.setColor(color);
        g.setGoods_name(goods_name);
        g.setGoods_change(goods_change);
        g.setXh(xh);
        g.setPrices(prices);
        gs.goodsSomeUpdate(g);
        sellTrade(m,request);
        return "sjzx";
    }
    @RequestMapping("/updateprogress")
    public String updateProgress(String progress,Model m,HttpServletRequest request,int goods_id){
        trade t=new trade();
        t.setProgress(progress);
        t.setGoods_id(goods_id);
        ts.ProgressUpdate(t);
        sellTrade(m,request);
        return "sjzx";
    }
    @RequestMapping("/usertrade")
    public String userTrade(Model m,HttpServletRequest request){
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        List<trade> tradelist=new ArrayList<>();
        tradelist=ts.getSomeTrade(u.getUser_id());
        m.addAttribute("user",user_name);
        ddUtils(tradelist,m,request);
        return "dd";
    }

    @RequestMapping("/confirmtrade")
    public String confirmTrade(int spid,Model m,HttpServletRequest request){
        trade t=ts.getOneTrade(spid);
        t.setComplete("到货");
        ts.CompleteUpdate(t);
        userTrade(m,request);
        return "dd";
    }
    @RequestMapping("/unfinishtrade")
    public String unfinishTrade(Model m,HttpServletRequest request){
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        List<trade> list=new ArrayList<>();
        List<trade> tradelist=new ArrayList<>();
        list=ts.getSomeTrade(u.getUser_id());
        for(int i=0;i<list.size();i++){
            if(list.get(i).getComplete().equals("确认收货")){
                tradelist.add(list.get(i));
            }
        }
        m.addAttribute("user",user_name);
        ddUtils(tradelist,m,request);
        return "dd2";
    }
    @RequestMapping("/finishtrade")
    public String finishTrade(Model m,HttpServletRequest request){
        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        String user_name = cke.getValue();
        user u = us.getOneUser(user_name);
        List<trade> list=new ArrayList<>();
        List<trade> tradelist=new ArrayList<>();
        list=ts.getSomeTrade(u.getUser_id());
        for(int i=0;i<list.size();i++){
            if(list.get(i).getComplete().equals("到货")){
                tradelist.add(list.get(i));
            }
        }
        m.addAttribute("user",user_name);
        ddUtils(tradelist,m,request);
        return "dd3";
    }
    public void ddUtils(List<trade> tradelist,Model m,HttpServletRequest request){
        List<goods> goodslist=new ArrayList<>();
        for(int i=0;i<tradelist.size();i++){
            goods g=gs.getOneGoods(tradelist.get(i).getGoods_id());
            goodslist.add(g);
        }
        List<File> imglist=new ArrayList<>();
        ServletContext servletContext=request.getServletContext();
        for(int i=0;i<goodslist.size();i++){
            String imgpath=servletContext.getRealPath(goodslist.get(i).getImgPath());
            File file =new File(imgpath);
            imglist.add(file);
        }
        m.addAttribute("imglist",imglist);
        m.addAttribute("goodslist",goodslist);
        m.addAttribute("tradelist",tradelist);
    }
}
