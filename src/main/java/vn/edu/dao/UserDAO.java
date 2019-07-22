package vn.edu.dao;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
 
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import vn.edu.models.User;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
/*    @SuppressWarnings("unchecked")
    public static void main(String[] args)
    {
        //JSON parser object to parse read file
        JSONParser jsonParser = new JSONParser();
         
        try (FileReader reader = new FileReader("src/main/java/vn/edu/dao/Students.json"))
        {
            //Read JSON file
            Object obj = jsonParser.parse(reader);
            ArrayList<User> userArrayList = new ArrayList<User>();
            ArrayList<User> userArrayList1 = new ArrayList<User>();
            JSONArray userList = (JSONArray) obj;
            //listUser(userList);
            System.out.println(userList);
            
            listUser();
             
            //Iterate over employee array
            //userLixst.forEach( user -> parseUserObject( (JSONObject) user ) );
            for (int i = 0; i < userList.size() ; i++)
            {
            	JSONObject user = (JSONObject) userList.get(i);
            	
            	User newUser = parseUserObject(user);
            	
            	userArrayList.add(newUser);
            }
            
            for (int i = 0; i < userArrayList.size() ; i++)
            {
            	User u = userArrayList.get(i);
            	System.out.println(u.getUsername());
            	System.out.println(u.getPassword());
            }
            
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }*/
    public static ArrayList<User> listUser() throws IOException, ParseException{
        //JSON parser object to parse read file
        JSONParser jsonParser = new JSONParser();
    	FileReader reader = new FileReader("E:\\ISC_FE_BE_Team06\\THITRACNGHIEMTRUCTUYEN\\QizzTest\\src\\main\\java\\vn\\edu\\dao\\Students.json");
        //Read JSON file
        Object obj = jsonParser.parse(reader);
        ArrayList<User> userArrayList = new ArrayList<User>();
        JSONArray userList = (JSONArray) obj;
        //System.out.println(userList);
        for (int i = 0; i < userList.size() ; i++)
        {
        	JSONObject user = (JSONObject) userList.get(i);
        	
        	User newUser = parseUserObject(user);
        	
        	userArrayList.add(newUser);
        }
        /*for (int i = 0; i < userArrayList.size() ; i++)
        {
        	User u = userArrayList.get(i);
        	System.out.println(u.getUsername());
        	System.out.println(u.getPassword());
        }*/
        //System.out.println(userArrayList.size());
    	return userArrayList;
    }
    private static User parseUserObject(JSONObject user)
    {
    	String username = (String) user.get("username");   
    	String password = (String) user.get("password"); 
    	return new User(username, password);
    }
}
