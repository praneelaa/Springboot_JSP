package com.example.bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.bookstore.Model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);
    User findByUsernameAndPasswordAndRole(String username, String password, String role);
}
