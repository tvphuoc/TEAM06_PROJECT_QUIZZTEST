package vn.edu.service;
import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.parser.ParseException;

import vn.edu.dao.UserDAO;
import vn.edu.models.User;
public class UserService {
	public boolean checkLogin(User user) throws IOException, ParseException {
		ArrayList<User> userArrayList = new ArrayList<User>();
		userArrayList = UserDAO.listUser();
		String name = user.getUsername().toLowerCase();
		String pass = user.getPassword();
		//System.out.println(userArrayList);
        for (int i = 0; i < userArrayList.size() ; i++)
        {
        	User u = userArrayList.get(i);
        	if (name.equals(u.getUsername().toLowerCase()) 
        			&& pass.equals(u.getPassword()))
        	{
        		
        		return true;
        	}
        }
        return false;
	}
	
}
