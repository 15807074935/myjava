package controller;

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

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/manager")
public class managerController {
    @Autowired
    goodsService gs;
    @Autowired
    userService us;
    @Autowired
    tradeService ts;
    @RequestMapping("/alldata")
     public String AllData(Model m){
        List<user> userlist=new ArrayList<>();
        List<goods> goodslist=new ArrayList<>();
        List<trade> tradelist=new ArrayList<>();
        userlist=us.getAllUser();
        goodslist=gs.getAllGoods();
        tradelist=ts.getAllTrade();
        m.addAttribute("userlist",userlist);
        m.addAttribute("goodslist",goodslist);
        m.addAttribute("tradelist",tradelist);
        return "allmes";
    }
    @RequestMapping("/delgoods")
    public String delGoods(Model m,Integer goods_id){
       gs.goodsDelete(goods_id);
       AllData(m);
        return "allmes";
    }
    @RequestMapping("/deluser")
    public String delUser(Model m,Integer user_id){
        us.userDel(user_id);
        AllData(m);
        return "allmes";
    }
}
