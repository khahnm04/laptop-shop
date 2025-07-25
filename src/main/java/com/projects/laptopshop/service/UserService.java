package com.projects.laptopshop.service;

import com.projects.laptopshop.domain.User;
import com.projects.laptopshop.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }

    public User handleSaveUser(User user) {
        User savedUser = this.userRepository.save(user);
        System.out.println(">>>>> " + savedUser);
        return savedUser;
    }

}
