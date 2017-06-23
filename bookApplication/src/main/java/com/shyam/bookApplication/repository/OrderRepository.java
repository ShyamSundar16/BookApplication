package com.shyam.bookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookApplication.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	public Order findById(int id);
}
