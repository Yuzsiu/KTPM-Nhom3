package com.ktpm.websitelaptop.model.service;

import com.ktpm.websitelaptop.model.dto.UserUpdateDTO;
import com.ktpm.websitelaptop.model.entity.User;
import com.ktpm.websitelaptop.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;
    public User findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
    public User updateProfileFromDTO(UserUpdateDTO dto) {
        User existingUser = userRepository.findById(dto.getId()).orElse(null);

        if (existingUser != null) {
            existingUser.setFullName(dto.getFullName());
            existingUser.setPhone(dto.getPhone());
            existingUser.setAddress(dto.getAddress());
            return userRepository.save(existingUser);
        }
        return null;
    }
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }
    // 1. Lấy thông tin user theo ID
    public User getUserById(Long id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy người dùng!"));
    }

    // 2. Lưu/Cập nhật user
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    @Autowired
    private com.ktpm.websitelaptop.model.repository.CartItemRepository cartItemRepository;

    // 3. Xóa user
    @org.springframework.transaction.annotation.Transactional
    public void deleteUser(Long id) {
        // Xóa tất cả các item trong giỏ hàng của user này trước (nếu có)
        cartItemRepository.deleteByUserId(id);
        // Sau đó mới xóa user (Nếu user đã có Order, hệ thống vẫn sẽ ném lỗi để controller bắt)
        userRepository.deleteById(id);
    }

}
