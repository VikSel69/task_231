package service;

import dao.UserDAO;
import models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    @Transactional
    @Override
    public List<User> index() {
        return userDAO.getUser();
    }

    @Transactional(readOnly = true)
    @Override
    public User showUsers(int id) {
        return userDAO.getUser().stream().filter(user -> user.getId() == id).findAny().orElse(null);
    }

    @Transactional
    public void saveUser(User user) {
        userDAO.getUser().add(user);
    }

    @Transactional
    public void updateUser(int id, User updatedUser) {
        User userToBeUpdated = showUsers(id);
        userToBeUpdated.setName(updatedUser.getName());
        userToBeUpdated.setSurname(updatedUser.getSurname());
        userToBeUpdated.setYearOfBirth(updatedUser.getYearOfBirth());
    }

    @Transactional
    public void deleteUser(int id) {
        userDAO.getUser().removeIf(p -> p.getId() == id);
    }
}
