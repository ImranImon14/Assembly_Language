package com.example.ebookplatform.service;

import com.example.ebookplatform.model.Order;
import com.example.ebookplatform.model.User;
import com.example.ebookplatform.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order placeOrder(Order order) {
        return orderRepository.save(order);
    }

    // Fetch orders by user email
    public List<Order> getOrdersByUser(User user) {
        return orderRepository.findAll().stream()
                .filter(order -> order.getEmail().equals(user.getEmail()))
                .toList();
    }
}
