package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.UserDao;
import springmvc.model.User;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	public int createUser(User user) {
		System.out.println(user + "in service");
		return this.userDao.saveUser(user);
	}
}
