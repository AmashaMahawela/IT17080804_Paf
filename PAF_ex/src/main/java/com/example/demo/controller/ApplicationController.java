package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Customer;
import com.example.demo.services.CustomerService;


@Controller
public class ApplicationController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request) {
		
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@RequestMapping("/addcustomer") 
	public String addition(HttpServletRequest request) {
		
		request.setAttribute("mode", "MODE_ADDCUSTOMER");
		return "welcome";
	}
	
	@PostMapping("/save-customer")
	public String addProduct(@ModelAttribute Customer customer , BindingResult bindingResult , HttpServletRequest request ) {
	customerService.savemycustomer(customer);
	request.setAttribute("mode", "MODE_HOME");	
		return "welcome";
		
	}
	
	@GetMapping("/show-customer")
	public String showAllProducts(HttpServletRequest request) {
		request.setAttribute("user", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "welcome";
	}
	
	@RequestMapping("/delete-customer")
	public String deleteProduct(@RequestParam int id , HttpServletRequest request) {
		customerService.deletemycustomer(id);
		request.setAttribute("products", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "welcome";
	}
	
	@RequestMapping("/edit-customer")
	public String editProduct(@RequestParam int id , HttpServletRequest request) {
		//request.setAttribute("customer", customerService.editcustomer(pid));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcome";
	}
	

} 
