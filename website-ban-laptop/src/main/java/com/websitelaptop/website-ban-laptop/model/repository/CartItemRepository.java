package com.ktpm.websitelaptop.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ktpm.websitelaptop.model.entity.CartItem;
import com.ktpm.websitelaptop.model.entity.Product;
import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    List<CartItem> findByUserId(Long userId);

    CartItem findByUserIdAndProduct(Long userId, Product product);

    void deleteByUserId(Long userId);
}
