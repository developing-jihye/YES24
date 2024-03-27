package model;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String password;
	private String pass2;
	private String name;
	private String phone;
	private String email;
	private Date birth;
	private int gender;
	private int agr1;
	private int agr2;
	private int agr3;
	private int agr4;
	private int agr5;
	private int agr6;
	private Date refdate;
	public MemberDTO() {}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	
	public int getAgr1() {
		return agr1;
	}
	public void setAgr1(int agr1) {
		this.agr1 = agr1;
	}
	public int getAgr2() {
		return agr2;
	}
	public void setAgr2(int agr2) {
		this.agr2 = agr2;
	}
	public int getAgr3() {
		return agr3;
	}
	public void setAgr3(int agr3) {
		this.agr3 = agr3;
	}
	public int getAgr4() {
		return agr4;
	}
	public void setAgr4(int agr4) {
		this.agr4 = agr4;
	}
	public int getAgr5() {
		return agr5;
	}
	public void setAgr5(int agr5) {
		this.agr5 = agr5;
	}
	public int getAgr6() {
		return agr6;
	}
	public void setAgr6(int agr6) {
		this.agr6 = agr6;
	}
	public Date getRefdate() {
		return refdate;
	}
	public void setRefdate(Date refdate) {
		this.refdate = refdate;
	}
	
	
}
