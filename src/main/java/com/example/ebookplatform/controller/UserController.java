package com.example.ebookplatform.controller;

import com.example.ebookplatform.model.Address;
import com.example.ebookplatform.model.Order;
import com.example.ebookplatform.model.User;
import com.example.ebookplatform.service.AddressService;
import com.example.ebookplatform.service.OrderService;
import com.example.ebookplatform.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService;
    private final AddressService addressService;
    private final OrderService orderService;

    public UserController(UserService userService, AddressService addressService, OrderService orderService) {
        this.userService = userService;
        this.addressService = addressService;
        this.orderService = orderService;
    }

    // --- Settings Dashboard ---
    @GetMapping("/settings")
    public String settingsPage(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if(user == null) return "redirect:/login";

        model.addAttribute("user", user);
        List<Address> addresses = addressService.getAddressesByUser(user);
        model.addAttribute("addresses", addresses);

        List<Order> orders = orderService.getOrdersByUser(user);
        model.addAttribute("orders", orders);

        return "user/settingsDashboard";
    }

    // --- Edit Profile ---
    @GetMapping("/edit-profile")
    public String editProfilePage(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if(user == null) return "redirect:/login";
        model.addAttribute("user", user);
        return "user/editProfile";
    }

    @PostMapping("/update-profile")
    public String updateProfile(@ModelAttribute User updatedUser, HttpSession session) {
        User sessionUser = (User) session.getAttribute("user");
        if(sessionUser == null) return "redirect:/login";

        sessionUser.setName(updatedUser.getName());
        sessionUser.setEmail(updatedUser.getEmail());
        sessionUser.setPhone(updatedUser.getPhone());

        userService.register(sessionUser); // save updated
        session.setAttribute("user", sessionUser);

        return "redirect:/user/settings";
    }

    // --- Add / Edit Address ---
    @GetMapping("/address")
    public String addAddressPage(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user == null) return "redirect:/login";

        model.addAttribute("address", new Address());
        return "user/addAddress";
    }

    @PostMapping("/address")
    public String saveAddress(@ModelAttribute Address address, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user == null) return "redirect:/login";

        address.setUser(user);
        addressService.saveAddress(address);

        return "redirect:/user/settings";
    }

    // --- View Orders ---
    @GetMapping("/orders")
    public String myOrdersPage(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if(user == null) return "redirect:/login";

        List<Order> orders = orderService.getOrdersByUser(user);
        model.addAttribute("orders", orders);
        return "user/myOrders";
    }
}
