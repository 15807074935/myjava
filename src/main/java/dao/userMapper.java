package dao;

import pojo.user;

import java.util.List;

public interface userMapper {
    public user getOneUser(String user_name);
    public user getIdUser(int user_id);
    public List<user> getAllUser();
    public int userInsert(user u);
    public int userUpdate(user u);
    public int userDel(int user_id);
}
