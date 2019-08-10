package service;

import dao.spselectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.spselect;

@Service
public class spselectService {
    @Autowired
    spselectMapper ssm;
    public spselect getonesp(String lx){
        return ssm.getonesp(lx);
    }
}
