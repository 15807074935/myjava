package controller;

import Utils.myUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.goods;
import pojo.goodstip;
import pojo.spselect;
import pojo.user;
import service.goodsService;
import service.goodstipService;
import service.spselectService;
import service.userService;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/ym")
@Controller
public class ymController {
    @Autowired
    goodstipService gts;
    @Autowired
    goodsService gs;
    @Autowired
    userService us;
    @Autowired
    spselectService ssm;
    @RequestMapping("/gettipym")
    public String getTipYm(String goodstype,String lx, Model model, HttpServletRequest request){
        getTip(goodstype, request,lx, model);
        List<goods> goodslist=new ArrayList<>();
        goodslist=gs.getBrandGoods(goodstype);
        imgtip(goodslist,model,request);
        return "sp";
    }
    @RequestMapping("/getitemgoods")
    public String getItemGoods(HttpServletRequest request,String  imgpath,String prices,String goodschange,String goods_name,String color,String model,String spuser,String sptel,String xh,int spid,Model m){
        ServletContext servletContext=request.getServletContext();
        String path=servletContext.getRealPath(imgpath);
        System.out.println(path);
        File file=new File(path);
        System.out.println(file.exists());
        m.addAttribute("file",file);
        m.addAttribute("prices",prices);
        m.addAttribute("goodschange",goodschange);
        m.addAttribute("goods_name",goods_name);

        m.addAttribute("color",color);
        m.addAttribute("model",model);
        m.addAttribute("spuser",spuser);
        m.addAttribute("sptel",sptel);
        m.addAttribute("xh",xh);
        m.addAttribute("spid",spid);
        return "items";
    }
    @RequestMapping("/ymprices")
    public String ymPrices(String spbrand,String prices,String btn,HttpServletRequest request,String lx,Model m){
        m.addAttribute("btn",btn);
        String p2[]=prices.split("-");
        int intprices[]=new int[2];
        for(int i=0;i<p2.length;i++){
            intprices[i]=Integer.parseInt(p2[i]);
        }
        List<goods> list=new ArrayList<>();
        List<goods> goodslist=new ArrayList<>();
        list=gs.getBrandGoods(spbrand);
        for(int i=0;i<list.size();i++){
            if(Integer.parseInt(list.get(i).getPrices())<=intprices[1]&&Integer.parseInt(list.get(i).getPrices())>=intprices[0]){
                goodslist.add(list.get(i));
            }
        }
        getTip(spbrand,request,lx,m);
        imgtip(goodslist,m,request);
        return "sp";
    }
    @RequestMapping("/ymhot")
    public String ymHot(String spbrand,String hot,String btn,HttpServletRequest request,String lx,Model m){
        m.addAttribute("btn",btn);
        List<goods> list=new ArrayList<>();
        list=gs.getHotGoods(hot);
        getTip(spbrand,request,lx,m);
        imgtip(list,m,request);
        return "sp";
    }
    @RequestMapping("/ymmodel")
    public String ymModel(String spbrand,String model,String btn,HttpServletRequest request,String lx,Model m){
        m.addAttribute("btn",btn);
        List<goods> list=new ArrayList<>();
        List<goods> goodsList=new ArrayList<>();
        list=gs.getModelGoods(model);
        for(int i=0;i<list.size();i++){
            if(list.get(i).getBrand().equals(spbrand)){
                goodsList.add(list.get(i));
            }
        }
        getTip(spbrand,request,lx,m);
        imgtip(goodsList,m,request);
        return "sp";
    }
    @RequestMapping("/gmgoods")
    public String gmGoods(int spid,Model m,HttpServletRequest request){
        goods g = gs.getOneGoods(spid);
        String xh=g.getXh();
        String prices=g.getPrices();
        String color=g.getColor();
        String path=g.getImgPath();
        m.addAttribute("xh",xh);
        m.addAttribute("prices",prices);
        m.addAttribute("color",color);
        m.addAttribute("spid",spid);

        ServletContext servletContext=request.getServletContext();
        String imgpath=servletContext.getRealPath(path);
        File file =new File(imgpath);
        m.addAttribute("file",file);

        Cookie cookie[] = request.getCookies();
        Cookie cke = myUtils.getCookie(cookie, "user_name");
        if (cke == null) {

        } else {
           String user_name=cke.getValue();
           user u = us.getOneUser(user_name);
           String local=u.getAddress();
           String tel=u.getTel();
           m.addAttribute("local",local);
            m.addAttribute("tel",tel);
            m.addAttribute("user_name",user_name);
        }

        return "gm";
    }

    public void getTip(String goodstype,HttpServletRequest request,String lx,Model model){
        goodstip gt = gts.getOneTip(goodstype);
        String p=gt.getPrices();
        String h=gt.getHot();
        String g=gt.getGuarantee();
        String t=gt.getType();
        String prices[]=p.split("，");
        String hot[]=h.split("，");
        String guarantee[] =g.split("，");
        String type[]=t.split("，");
        spselect ss=ssm.getonesp(lx);
        model.addAttribute("one",ss.getOne());
        model.addAttribute("two",ss.getTwo());
        model.addAttribute("three",ss.getThree());
        model.addAttribute("four",ss.getFour());
        model.addAttribute("prices",prices);
        model.addAttribute("hot",hot);
        model.addAttribute("guarantee",guarantee);
        model.addAttribute("type",type);
        model.addAttribute("brand",goodstype);
        model.addAttribute("splx",lx);
    }
    public void imgtip(List<goods> goodslist,Model m,HttpServletRequest request){
        ServletContext servletContext=request.getServletContext();
        List<File>  imglist=new ArrayList<>();
        for(int i=0;i<goodslist.size();i++){
            String path=servletContext.getRealPath(goodslist.get(i).getImgPath());
            File file=new File(path);
            imglist.add(file);
        }
        m.addAttribute("goodslist",goodslist);
        m.addAttribute("imglist",imglist);
        m.addAttribute("spcount",goodslist.size());

    }
}
