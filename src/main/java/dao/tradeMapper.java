package dao;

import pojo.trade;

import java.util.List;

public interface tradeMapper {
    public trade getOneTrade(int goods_id);
    public List<trade> getSomeTrade(int user_id);
    public int TradeInsert(trade t);
    public int ProgressUpdate(trade t);
    public int CompleteUpdate(trade t);
    public List<trade> getAllTrade();
}
