package cn.tslanpu.test.admin.domain;

public class Admin {
	
	private String username;
	private String password;
	private String groupid;
	private String name;
	private String department;
	private String role;
	private String phone;
	private String tel;
	private String image;
	private String zhiFaNumber;
	
	private int id;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGroupid() {
		return groupid;
	}
	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Admin [department=" + department + ", groupid=" + groupid
				+ ", id=" + id + ", name=" + name + ", password=" + password
				+ ", phone=" + phone + ", role=" + role + ", tel=" + tel
				+ ", username=" + username + "]";
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getZhiFaNumber() {
		return zhiFaNumber;
	}
	public void setZhiFaNumber(String zhiFaNumber) {
		this.zhiFaNumber = zhiFaNumber;
	}
}
