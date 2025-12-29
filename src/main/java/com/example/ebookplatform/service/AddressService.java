package com.example.ebookplatform.service;

import com.example.ebookplatform.model.Address;
import com.example.ebookplatform.model.User;
import com.example.ebookplatform.repository.AddressRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressService {

    private final AddressRepository addressRepository;

    public AddressService(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    public Address saveAddress(Address address) {
        return addressRepository.save(address);
    }

    public List<Address> getAddressesByUser(User user) {
        return addressRepository.findByUser(user);
    }
}
