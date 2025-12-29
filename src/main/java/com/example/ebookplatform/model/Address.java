package com.example.ebookplatform.model;

import jakarta.persistence.*;

@Entity
@Table(name = "addresses")
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String city;
    private String upazila;
    private String district;

    @ManyToOne
    private User user;

    // getters & setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    public String getUpazila() { return upazila; }
    public void setUpazila(String upazila) { this.upazila = upazila; }

    public String getDistrict() { return district; }
    public void setDistrict(String district) { this.district = district; }

    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
}
