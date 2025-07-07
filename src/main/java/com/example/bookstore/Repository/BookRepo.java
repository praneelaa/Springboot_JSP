package com.example.bookstore.Repository;

import com.example.bookstore.Model.BookModel;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface BookRepo extends JpaRepository<BookModel, Integer> {
    List<BookModel> findByTitleContainingIgnoreCase(String title);
   
}
