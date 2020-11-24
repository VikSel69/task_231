package dao;

import models.User;

import java.util.List;

public interface UserDAO {
    void addUser(User user);
    List<User> getUser();
}
