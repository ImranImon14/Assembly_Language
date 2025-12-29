package com.example.ebookplatform.repository;

import com.example.ebookplatform.model.CartItem;
import com.example.ebookplatform.model.User;
import com.example.ebookplatform.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CartRepository extends JpaRepository<CartItem, Long> {

    List<CartItem> findByUser(User user);

    @Transactional   // 🔥 THIS IS THE KEY FIX
    void deleteByUserAndBook(User user, Book book);
}
