/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.User;

/**
 *
 * @author Adminl
 */

public interface UserDao {
	
	public void create(User p);
	public User findByUsername(String name);	
	public void update(User user);
	public User findById(int id);
	public void delete(int id);
	public void updateOld();
	public static List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}