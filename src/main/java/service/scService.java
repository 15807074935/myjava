package service;

import dao.scMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.sc;

import java.util.List;

@Service
public class scService {
    @Autowired
    scMapper sm;
    public List<sc> getSomeSc(int user_id){
        return sm.getSomeSc(user_id);
    }
    public int addSc(sc s){
        return sm.addSc(s);
    }
    public sc getOneSc(sc s){
        return sm.getOneSc(s);
    }
    public int deleteSc(sc s){
        return sm.deleteSc(s);
    }
}
