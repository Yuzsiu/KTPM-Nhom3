package com.ktpm.websitelaptop.security;

import com.ktpm.websitelaptop.model.entity.User;
import com.ktpm.websitelaptop.model.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    public CustomUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByEmailOrPhone(username, username);
        if (user == null) {
            throw new UsernameNotFoundException("Không tìm thấy người dùng với email hoặc số điện thoại: " + username);
        }
        return new CustomUserDetails(user);
    }
}
