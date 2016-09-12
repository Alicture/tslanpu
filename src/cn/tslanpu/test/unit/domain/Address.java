package cn.tslanpu.test.unit.domain;

import java.io.Serializable;

public class Address implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String position;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String address) {
		this.position = address;
	}
	@Override
	public String toString() {
		return "Address [address=" + position + ", id=" + id + "]";
	}
}
