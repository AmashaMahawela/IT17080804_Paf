package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {

	private final CustomerRepository customerRepository;
	
	public CustomerService(CustomerRepository customerRepository) {
		
		this.customerRepository = customerRepository;
	}
	
	public void savemycustomer(Customer customer) {
		
		customerRepository.save(customer);
	}
	
	public List<Customer>showAllCustomers(){
		
		List<Customer>user = new ArrayList<Customer>();
		for(Customer customer : customerRepository.findAll()) {
			
			user.add(customer); 
			
		}
		
		return user;
	}
	
	public void deletemycustomer(int id) {
		
		customerRepository.deleteById(id);
	}
	
	public void editcustomer(int id) {
		
			customerRepository.findById(id); 
	}
}

