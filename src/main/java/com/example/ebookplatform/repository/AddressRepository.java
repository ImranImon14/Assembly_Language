package com.example.ebookplatform.repository;

import com.example.ebookplatform.model.Address;
import com.example.ebookplatform.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AddressRepository extends JpaRepository<Address, Long> {
    List<Address> findByUser(User user);
}
