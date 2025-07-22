package com.projects.laptopshop.service;

import com.projects.laptopshop.domain.User;
import com.projects.laptopshop.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(
        UserRepository userRepository
    ) {
        this.userRepository = userRepository;
    }

    public User handleSaveUser(User user) {
        User savedUser = userRepository.save(user);
        System.out.println(">>>>> " + savedUser);
        return savedUser;
    }

}
