package vn.edu.service;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
	
	@SuppressWarnings("unchecked")
	public boolean registration(User user) throws IOException, ParseException {
		ArrayList<User> userArrayList = new ArrayList<User>();
		JSONArray userList = new JSONArray();
		userArrayList = UserDAO.listUser();
		userArrayList.add(user);
		//Object obj = userArrayList;
		//userArrayList = (JSONArray) obj;
        for (int i = 0; i < userArrayList.size() ; i++)
        {
        	User u = (User) userArrayList.get(i);
        	JSONObject jsonObjectUser = parseUserToJsonObject(u);
        	userList.add(jsonObjectUser);
        }
        
        FileOutputStream f = new FileOutputStream("E:\\ISC_FE_BE_Team06\\THITRACNGHIEMTRUCTUYEN\\QizzTest\\src\\main\\java\\vn\\edu\\dao\\Students.json");
        OutputStreamWriter outputTream = new OutputStreamWriter(f);
        
        BufferedWriter  bufferWriter = new BufferedWriter(outputTream);
                
        try { 
        	userList.writeJSONString(bufferWriter);
        	bufferWriter.close();
        	return true;
        } catch (IOException e){
        	return false;
        }
	}
	
    private static JSONObject parseUserToJsonObject(User user)
    {
    	String username =  user.getUsername();   
    	String password =  user.getPassword(); 
    	HashMap<String, String> hashmap = new HashMap<String, String>();
    	hashmap.put("username", username);
    	hashmap.put("password", password);
    	return new JSONObject(hashmap);
    }
	
}
