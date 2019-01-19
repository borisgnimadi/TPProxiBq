package model;

public class User {
	
	private int id;
	private String name;
	private String firstName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFirstname() {
		return firstName;
	}
	public void setFirstname(String firstname) {
		this.firstName = firstname;
	}
	
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", firstname=" + firstName + "]";
	}
	public User(int id, String name, String firstName) {
		super();
		this.id = id;
		this.name = name;
		this.firstName = firstName;
	}
	
	
	

}
