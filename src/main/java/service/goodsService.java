package service;

import dao.goodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.goods;

import java.util.List;

@Service
public class goodsService {
    @Autowired
    goodsMapper gm;
    public goods getOneGoods(int goods_id){
       return gm.getOneGoods(goods_id);
    }
    public List<goods> getSomeGoods(int user_id){
      return  gm.getSomeGoods(user_id);
    }
    public List<goods> getBrandGoods(String brand){
        return  gm.getBrandGoods(brand);
    }
    public List<goods> getHotGoods(String xh){return gm.getHotGoods(xh);}
    public List<goods> getModelGoods(String model){return gm.getModelGoods(model);}
    public int goodsInsert(goods g){
       return gm.goodsInsert(g);
    }
    public int goodsUpdate(goods g){
        return gm.goodsUpdate(g);
    }
    public int goodsDelete(int goods_id){
        return gm.goodsDelete(goods_id);
    }
    public List<goods> getTypeGoods(String goods_type){
        return gm.getTypeGoods(goods_type);
    }
    public int goodsSomeUpdate(goods g){return gm.goodsSomeUpdate(g);}
    public List<goods> getAllGoods(){return gm.getAllGoods();}
}
