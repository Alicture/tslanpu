package cn.tslanpu.test.unit.domain;

import java.io.Serializable;

public class Unit implements Serializable{
	private static final long serialVersionUID = 1L;
	private String department;
	private int id;
	
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Unit [department=" + department + ", id=" + id + "]";
	}
}
