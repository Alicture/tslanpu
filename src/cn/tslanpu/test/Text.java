package cn.tslanpu.test;

public class Text {
	private String name1;
	private String name2;
	private String name3;
	private String name4;
	private String name;
	private String nn;
	public String getNn() {
		return nn;
	}
	public void setNn(String nn) {
		this.nn = nn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getName3() {
		return name3;
	}
	public void setName3(String name3) {
		this.name3 = name3;
	}
	public String getName4() {
		return name4;
	}
	public void setName4(String name4) {
		this.name4 = name4;
	}
	public static void main(String[] args) {
		String str = ",,,,,,,,";
		String[] array = str.split(",");
		System.out.println(0);
		
		String[] str2 = new String[0];
		System.arraycopy(array, 0, str2, 0, array.length);
		for(String i : str2){
			System.out.println(i);
		}
		
	}
}
