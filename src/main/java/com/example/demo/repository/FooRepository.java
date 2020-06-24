package com.example.demo.repository;

import com.example.demo.model.Foo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FooRepository extends JpaRepository<Foo, Integer> {

}
