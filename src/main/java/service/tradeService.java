package service;

import dao.tradeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.trade;

import java.util.List;

@Service
public class tradeService {
    @Autowired
    tradeMapper tm;
    public int TradeInsert(trade t){return tm.TradeInsert(t);}
    public List<trade> getAllTrade(){return tm.getAllTrade();}
    public int ProgressUpdate(trade t){return tm.ProgressUpdate(t);}
    public trade getOneTrade(int goods_id){return tm.getOneTrade(goods_id);}
    public List<trade> getSomeTrade(int user_id){return tm.getSomeTrade(user_id);}
    public int CompleteUpdate(trade t){return tm.CompleteUpdate(t);}
}
