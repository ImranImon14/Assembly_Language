package com.example.ebookplatform.model;

import jakarta.persistence.*;

@Entity
@Table(name = "cart_items")
public class CartItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private User user;

    @ManyToOne
    private Book book;

    private int quantity = 1;

    public Long getId() { return id; }
    public User getUser() { return user; }
    public Book getBook() { return book; }
    public int getQuantity() { return quantity; }

    public void setId(Long id) { this.id = id; }
    public void setUser(User user) { this.user = user; }
    public void setBook(Book book) { this.book = book; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
}
