package com.shyam.bookApplication.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shyam.bookApplication.Service.UserService;
import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.repository.BookRepository;
import com.shyam.bookApplication.repository.UserRepository;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	UserRepository userRepo;

	@Autowired
	BookRepository bookRepo;

	@Autowired
	UserService userService;
	
	@GetMapping("/register")
	public String login() {
		return "register";
	}

	@PostMapping("/save")
	public String add_user(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("password") String password) throws Exception {
		User user = new User();
		user.setName(name);
		user.setEmailID(email);
		user.setPassword(password);
		userService.save(user);
		System.out.println("User added");
		return "login";
	}

	@GetMapping("/login")
	public String login_user() {
		return "login";
	}

	@PostMapping("/validate")
	public String authorize(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session) {
		User u = userRepo.findByEmailIDAndPassword(email, password);
		if (u != null) {
			session.setAttribute("USER",u);
			return "redirect:../books/";

		} else {
			return "login";
		}

	}

}
