package kz.almasov.crtr_test_task.service;

import kz.almasov.crtr_test_task.entity.User;
import kz.almasov.crtr_test_task.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.validation.Valid;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void addUser(User user) {
        userRepository.save(user);
    }

    public Page<User> getUserPage(Pageable pageable) {
        Page<User> users = userRepository.findAll(pageable);
        return users;
    }
}
