 package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Customer;
import com.example.demo.services.CustomerService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private CustomerService customerService;
	
	
	
	
	@GetMapping("savecustomer")
	public String saveCustomer(@RequestParam int id , @RequestParam String userName, @RequestParam String password, @RequestParam Integer phone) {
		
		Customer customer = new Customer(id,userName,password,phone );
		customerService.savemycustomer(customer);
		return "Customer Saved!!";
	}

}
