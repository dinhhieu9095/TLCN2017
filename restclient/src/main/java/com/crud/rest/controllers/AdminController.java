package com.crud.rest.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.crud.rest.beans.Customer;
import com.crud.rest.beans.Ticket_detail;
@Controller
public class AdminController {
	@RequestMapping(value = "/AdminTicket_detail")
	public ModelAndView AdminTicket_detail(ModelMap model,HttpSession session) 
	{
		ModelAndView view = new ModelAndView();
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/ticket_details";
		Ticket_detail[] ticket_details=restTemplate.getForObject(url, Ticket_detail[].class);

		session.setAttribute("ticket_details", ticket_details);
		view.setViewName("AdminTicket_detail");
		return view;
	}
	@RequestMapping(value = "/Confirm" , method = RequestMethod.GET)
	public String Confirm(HttpServletRequest request,HttpSession session) 
	{	int ticket_detailID=Integer.parseInt(request.getParameter("ticket_detailID"));
	RestTemplate restTemplate = new RestTemplate();
	String url="http://rs13110214-13110267.kilatiron.com/{ticket_detailID}";
	restTemplate.put(url,true,ticket_detailID);
	return "redirect:AdminTicket_detail";
	}
	@RequestMapping(value = "/DeleteTicket_detail" , method = RequestMethod.GET)
	public String DeleteTicket_detail(ModelMap model ,HttpServletRequest request,HttpSession session) 
	{	int ticket_detailID=Integer.parseInt(request.getParameter("ticket_detailID"));
	RestTemplate restTemplate = new RestTemplate();
	String url="http://rs13110214-13110267.kilatiron.com/{ticket_detailID}";
	restTemplate.delete(url, ticket_detailID);
	return "redirect:AdminTicket_detail";
	}

	@RequestMapping(value = "/AdminListUser" , method = RequestMethod.GET)
	public ModelAndView ListUser(ModelMap model,HttpSession session,HttpServletRequest request) 
	{
		ModelAndView view = new ModelAndView();
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/customers";
		Customer[] customers=restTemplate.getForObject(url, Customer[].class);
		session.setAttribute("customers", customers);
		view.setViewName("AdminListUser");
		return view;
	}

	@RequestMapping(value = "/Deletecustomer" , method = RequestMethod.GET)
	public String Deletecustomer(ModelMap model ,HttpServletRequest request,HttpSession session) 
	{	int customerID=Integer.parseInt(request.getParameter("customerID"));
	RestTemplate restTemplate = new RestTemplate();
	String url="http://rs13110214-13110267.kilatiron.com/deletecustomer/{customerID}";
	restTemplate.delete(url, customerID);
	return "redirect:AdminListUser";
	}
	@RequestMapping(value = "/updatecustomer", method = RequestMethod.GET)
	public ModelAndView showFormcustomer(ModelMap model,HttpServletRequest request,HttpSession session) {
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/customer/{CustomerID}";
		Customer customer=restTemplate.getForObject(url, Customer.class,customerID);
		session.setAttribute("customer1", customer);
		return new ModelAndView("/updatecustomer");
	}
	@RequestMapping(value = "/Updatecustomer", method = RequestMethod.GET)
	public String showFormUpdatecustomer(ModelMap model) {
		model.put("customerData", new Customer());
		return "/updatecustomer";
	}
	@RequestMapping(value = "/Updatecustomer" , method = RequestMethod.POST)
	public String Updatecustomer(ModelMap model,@ModelAttribute("customerData") @Valid Customer customer ,HttpServletRequest request,HttpSession session) 
	{	try{
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/customer/{CustomerID}";
		restTemplate.put(url, customer,customerID);
		return "redirect:AdminListUser";
	}catch (HttpClientErrorException  e) {
		if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 405) {
			throw e;
		}

	}

	model.put("Uf", "Update failed");
	return "/updatecustomer";
	}
}
