package model;

public class product {

	int id;
	String name;
	String cal;
	
	
	public product() {
		super();
	}

	public product(int id, String name, String cal) {
		super();
		this.id = id;
		this.name = name;
		this.cal = cal;
	}
	
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
	public String getCal() {
		return cal;
	}
	public void setCal(String cal) {
		this.cal = cal;
	}
}
