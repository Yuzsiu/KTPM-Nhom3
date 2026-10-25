package com.ktpm.websitelaptop;


import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.Mock;
import org.mockito.InjectMocks;
import org.junit.jupiter.api.Test;

import com.ktpm.websitelaptop.model.service.AuthService;
import com.ktpm.websitelaptop.model.repository.UserRepository;
import com.ktpm.websitelaptop.model.entity.User;
import static org.mockito.Mockito.when;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

@ExtendWith(MockitoExtension.class)
public class AuthServiceTest {
    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private AuthService authService;

    //TH1: Tài khoản và mật khẩu đúng
    @Test
    public void testAuthenticateSuccess() {
        User mockUser = new User();
        mockUser.setPassword("dung17032005");

        when(userRepository.findByEmailOrPhone("dung2xvp@gmail.com", "dung2xvp@gmail.com")).thenReturn(mockUser);
        User result = authService.authenticate("dung2xvp@gmail.com", "dung17032005");
        assertNotNull(result);
    }

    //TH2: Sai mật khẩu
    @Test
    public void testAuthenticateFailed() {
        User mockUser = new User();
        mockUser.setPassword("dung17032005@");

        when(userRepository.findByEmailOrPhone("dung2xvp@gmail.com", "dung2xvp@gmail.com")).thenReturn(mockUser);
        User result = authService.authenticate("dung2xvp@gmail.com", "dung17032005");
        assertNull(result);
    }

    //TH3: Tài khoản không tồn tại
    @Test
    public void testAuthenticateNotFound() {
        when(userRepository.findByEmailOrPhone("dung2xvp@gmail.com", "dung2xvp@gmail.com")).thenReturn(null);
        User result = authService.authenticate("dung2xvp@gmail.com", "dung17032005");
        assertNull(result);
    }

}
