package com.shyam.bookApplication.Service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.repository.UserRepository;
import com.shyam.bookApplication.util.EmailUtil;

@Service
public class UserService {
	@Autowired
	UserRepository userrepository;

	@Autowired
	EmailUtil emailUtil;

	public void save(User user) throws Exception {
		userrepository.save(user);
		String subject = "conformation mail";
		String body = "registered successfully";
		emailUtil.send(user.getEmailID(), subject, body);
	}

	public User findbyemailIdAndpassword(String email, String password) {
		return userrepository.findByEmailIDAndPassword("test@gmail.com", "test");
	}
}
