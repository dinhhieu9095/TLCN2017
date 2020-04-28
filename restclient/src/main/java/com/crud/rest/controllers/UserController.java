package com.crud.rest.controllers;

import java.sql.Date;
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
import com.crud.rest.beans.Flight;
import com.crud.rest.beans.Ticket_detail;
import com.crud.rest.beans.Type;
@Controller
public class UserController {
	@RequestMapping(value = "/createUser", method = RequestMethod.GET)
	public String showForm(ModelMap model) {
		model.put("customerData", new Customer());
		return "/register";
	}
	@RequestMapping(value="/createUser",method = RequestMethod.POST)
	public String createUser(ModelMap model, @ModelAttribute("customerData") @Valid Customer customer,HttpSession session) {
		try{
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/customer/new";
			customer=restTemplate.postForObject(url, customer, Customer.class);
			session.setAttribute("customer", customer);
			return "/Index";
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}

		}

		model.put("failed", "user is available");
		return "/register";
	}
	@RequestMapping(value = "/addUserInfo", method = RequestMethod.GET)
	public String showFormInfo(ModelMap model) {
		model.put("customerData", new Customer());
		return "/adduserinfo";
	}
	@RequestMapping(value="/addUserInfo", method = RequestMethod.POST)
	public String createUserInfo(ModelMap model, @ModelAttribute("customerData") @Valid Customer customer,HttpSession session) {
		try{
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/customer/new";
			customer=restTemplate.postForObject(url, customer, Customer.class);
			session.setAttribute("customer", customer);
			return "/addticket_detail";
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}
		}
		model.put("failed", "user is available");
		return "/adduserinfo";
	}
	//
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(ModelMap model,HttpSession session) {
		if(session.getAttribute("customer")==null){
			model.put("customerData", new Customer());
			return "/Index";
		}else
			return "/Index";
	}

	@RequestMapping(value = "/login")
	public String doLogin(ModelMap model, @ModelAttribute("customerData") @Valid Customer customer, HttpSession session) {
		try{
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/login/{mail}/{password}";
			customer=restTemplate.getForObject(url, Customer.class,customer.getMail(),customer.getPassword());
			session.setAttribute("customer", customer);
			return "/Index";
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}

		}
		model.put("failed", "login failed");
		return "/Index";

	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut(ModelMap model,HttpSession session) {
		session.removeAttribute("customer");
		return "/Index";
	}

	@RequestMapping(value = "/Index", method = RequestMethod.GET)
	public String showSuccess(ModelMap model) {
		model.put("Index", new Customer());
		return "Index";
	}

	@RequestMapping(value = "/search")
	public ModelAndView doSearch(ModelMap model,Flight flight,Date departTime,Integer seat,Integer seat1,HttpSession session) 
	{
		try{
			ModelAndView view = new ModelAndView();
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/flight/search/{seat}/{seat1}/{origin}/{destination}/{departTime}";
			String url1="http://rs13110214-13110267.kilatiron.com/types";
			Flight[] flights=restTemplate.getForObject(url, Flight[].class,seat,seat1,flight.getOrigin(),flight.getDestination(),departTime);
			Type[] type = restTemplate.getForObject(url1, Type[].class);
			session.setAttribute("seat", seat);
			session.setAttribute("seat1", seat1);
			session.setAttribute("flights", flights);
			session.setAttribute("type", type);
			view.setViewName("ListFlight");
			return view;
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}

		}
		model.put("failed", "number of passengers is out of limit allowed");
		return new ModelAndView("/Index");
	}
	@RequestMapping(value = "/search1")
	public ModelAndView doSearch1(ModelMap model,Flight flight,Date departTime,Date arrivalTime,Integer seat,Integer seat1,HttpSession session) 
	{
		try{
			ModelAndView view = new ModelAndView();
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/flight/search/{seat}/{seat1}/{origin}/{destination}/{departTime}";
			String url1="http://rs13110214-13110267.kilatiron.com/types";
			Flight[] flights=restTemplate.getForObject(url, Flight[].class,seat,seat1,flight.getOrigin(),flight.getDestination(),departTime);
			Flight[] flights1=restTemplate.getForObject(url, Flight[].class,seat,seat1,flight.getDestination(),flight.getOrigin(),arrivalTime);
			Type[] type = restTemplate.getForObject(url1, Type[].class);
			session.setAttribute("seat", seat);
			session.setAttribute("seat1", seat1);
			session.setAttribute("flights", flights);
			session.setAttribute("flights1", flights1);
			session.setAttribute("type", type);
			view.setViewName("ListFlight");
			return view;
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}

		}
		model.put("failed", "number of passengers is out of limit allowed");
		return new ModelAndView("/Index");
	}
	@RequestMapping(value = "/List", method = RequestMethod.GET)
	public String showList(ModelMap model) {
		model.put("ListFlight", new Flight());
		return "ListFlight";
	}
	@RequestMapping(value = "/Orderpage", method = RequestMethod.GET)
	public ModelAndView Information(ModelMap model,HttpServletRequest request,HttpSession session) {
		try{
			int flightID=Integer.parseInt(request.getParameter("flightID"));
			RestTemplate restTemplate = new RestTemplate();
			String url="http://rs13110214-13110267.kilatiron.com/flight/{flightID}";
			Flight flight=restTemplate.getForObject(url, Flight.class,flightID);
			session.setAttribute("flight", flight);
			if(session.getAttribute("customer")!=null){
				return new ModelAndView("/addticket_detail");
			}else
				return new ModelAndView("/adduserinfo");
		}catch (HttpClientErrorException  e) {
			if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 409) {
				throw e;
			}

		}
		model.put("fail", "This flight is available in your list ticket");
		return new ModelAndView("ListFlight");
	}
	@RequestMapping(value = "/addticket_detail", method = RequestMethod.GET)
	public String showticket_detail(ModelMap model) {
		model.put("ticket_detailData", new Ticket_detail());
		return "/Orderpage";
	}
	@RequestMapping(value = "/addticket_detail", method = RequestMethod.POST)
	public String addticket_detail(ModelMap model,@ModelAttribute("ticket_detailData") @Valid Ticket_detail ticket_detail,HttpSession session) {

		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/ticket_detail/new";
		ticket_detail=restTemplate.postForObject(url, ticket_detail, Ticket_detail.class);
		session.setAttribute("ticket_detail", ticket_detail);
		return "/Information";
	}
	@RequestMapping(value = "/addticket", method = RequestMethod.GET)
	public String showticket(ModelMap model) {
		model.put("ticketData", new Ticket_detail());
		return "Information";
	}
	@RequestMapping(value = "/addticket", method = RequestMethod.POST)
	public String addticket(ModelMap model,@ModelAttribute("ticketData") @Valid Ticket_detail ticket_detail,HttpServletRequest request,HttpSession session) {

		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/tickets/new";
		ticket_detail=restTemplate.postForObject(url, ticket_detail, Ticket_detail.class);
		session.setAttribute("ticket", ticket_detail);
		return "redirect:success1";
	}
	@RequestMapping(value = "/success1", method = RequestMethod.GET)
	public String showok(ModelMap model) {
		return "success1";
	}
	@RequestMapping(value = "/UserManagement" , method = RequestMethod.GET)
	public ModelAndView UserManagement(ModelMap model,HttpSession session,HttpServletRequest request) 
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("UserManagement");
		return view;
	}
	@RequestMapping(value = "/Deleteuser" , method = RequestMethod.GET)
	public String Deleteuser(ModelMap model ,HttpServletRequest request,HttpSession session) 
	{	int customerID=Integer.parseInt(request.getParameter("customerID"));
	RestTemplate restTemplate = new RestTemplate();
	String url="http://rs13110214-13110267.kilatiron.com/deletecustomer/{customerID}";
	restTemplate.delete(url, customerID);
	return "redirect:UserManagement";
	}
	@RequestMapping(value = "/updateuser", method = RequestMethod.GET)
	public ModelAndView showFormuser(ModelMap model,HttpServletRequest request,HttpSession session) {
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/customer/{CustomerID}";
		Customer customer=restTemplate.getForObject(url, Customer.class,customerID);
		session.setAttribute("customer1", customer);
		return new ModelAndView("/updateuser");
	}
	@RequestMapping(value = "/Updateuser", method = RequestMethod.GET)
	public String showFormUpdateuser(ModelMap model) {
		model.put("customerData", new Customer());
		return "/updatecustomer";
	}
	@RequestMapping(value = "/Updateuser" , method = RequestMethod.POST)
	public String Updateuser(ModelMap model,@ModelAttribute("customerData") @Valid Customer customer ,HttpServletRequest request,HttpSession session) 
	{	try{
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/customer/{CustomerID}";
		restTemplate.put(url, customer,customerID);
		return "redirect:UserManagement";
	}catch (HttpClientErrorException  e) {
		if (e.getStatusCode().value() != 404 && e.getStatusCode().value() != 400 && e.getStatusCode().value() != 405) {
			throw e;
		}
		model.put("Uf", "Update failed");
		return "/updateuser";
	}
	}
	@RequestMapping(value = "/UserTicket_detail" , method = RequestMethod.GET)
	public ModelAndView ListByUser(ModelMap model,HttpSession session,HttpServletRequest request) 
	{
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		ModelAndView view = new ModelAndView();
		RestTemplate restTemplate = new RestTemplate();
		String url="http://rs13110214-13110267.kilatiron.com/searchticket_detail/{customerID}";
		Ticket_detail[] ticket_details=restTemplate.getForObject(url, Ticket_detail[].class,customerID);
		session.setAttribute("ticket_details1", ticket_details);
		view.setViewName("UserTicket_detail");
		return view;
	}
	@RequestMapping(value = "/DeleteTicket_detail1" , method = RequestMethod.GET)
	public String DeleteTicket_detail1(ModelMap model ,HttpServletRequest request,HttpSession session) 
	{	int ticket_detailID=Integer.parseInt(request.getParameter("ticket_detailID"));
	RestTemplate restTemplate = new RestTemplate();
	String url="http://rs13110214-13110267.kilatiron.com/deticket/{ticket_detailID}";
	restTemplate.delete(url, ticket_detailID);
	return "redirect:UserManagement";
	}
}
