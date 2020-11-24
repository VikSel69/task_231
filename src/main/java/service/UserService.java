package service;

import models.User;

import java.util.List;

public interface UserService {
    List<User> index();
    User showUsers(int a);
}
