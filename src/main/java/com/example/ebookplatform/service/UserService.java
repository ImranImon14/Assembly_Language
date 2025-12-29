package com.example.ebookplatform.service;

import com.example.ebookplatform.model.User;
import com.example.ebookplatform.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Register / Save user
    public User register(User user) {
        return userRepository.save(user);
    }

    // Login user: email এবং password match করলে return করবে, অন্যথায় null
    public User login(String email, String password) {
        User user = userRepository.findByEmail(email);
        if(user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
