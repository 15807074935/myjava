package service;

import dao.goodstipMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.goodstip;
@Service
public class goodstipService {
    @Autowired
    goodstipMapper gtm;
    public goodstip getOneTip(String goodstype){
        return gtm.getOneTip(goodstype);
    }
}
