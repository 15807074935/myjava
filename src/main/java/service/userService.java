package service;

import dao.userMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.user;

import java.util.List;

@Service
public class userService {
    @Autowired
    userMapper usermapper;

    public user getOneUser(String user_name) {
        return usermapper.getOneUser(user_name);
    }

    public List<user> getAllUser() {
        {
            return usermapper.getAllUser();
        }
    }

    public int userInsert(user u) {
        {
            return usermapper.userInsert(u);
        }
    }

    public int userUpdate(user u) {
        {
            return usermapper.userUpdate(u);
        }
    }
    public user getIdUser(int user_id){
        return usermapper.getIdUser(user_id);
    }
    public int userDel(Integer user_id){
        return usermapper.userDel(user_id);
    }
}
