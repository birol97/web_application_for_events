package main_app;

import java.io.Serializable;

public class user implements Serializable{
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String user;
private int phone;
private String email;
private String pass;

public user(String username,String pass,String email,int phone)
{    
  
    this.user = username;
    this.pass = pass;
    this.email = email;
    this.phone = phone;
   
}
 public void setUser(String x) {
	 
	 user = x;
	 
 }

 public void setpass(String x) {
	 
	 this.pass = x;
	 
 }
public void setphone(String x) {
	 
	 this.pass = x;
	 
 }
public String getUser() {
	 
	return user;
	 
 }

public String getpass() {
	 
	return this.pass;
	 
 }
public String getemail() {
	 
	return this.email;
	 
 }
public int getphone() {
	 
	return this.phone;
	 
 }


}
