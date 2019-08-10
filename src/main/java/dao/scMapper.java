package dao;
import pojo.sc;

import java.util.List;

public interface scMapper {
    List<sc> getSomeSc(int user_id);
    int addSc(sc s);
    sc getOneSc(sc s);
    int deleteSc(sc s);
}
