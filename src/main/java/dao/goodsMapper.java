package dao;

import pojo.goods;

import java.util.List;

public interface goodsMapper {
    public goods getOneGoods(int goods_id);
    public List<goods> getTypeGoods(String goods_type);
    public List<goods> getSomeGoods(int user_id);
    public List<goods> getBrandGoods(String brand);
    public List<goods> getHotGoods(String xh);
    public List<goods> getModelGoods(String xh);
    public int goodsInsert(goods g);
    public int goodsUpdate(goods g);
    public int goodsSomeUpdate(goods g);
    public int goodsDelete(int goods_id);
    public List<goods> getAllGoods();
}
