package org.stuIntelEat.pojo;

import java.util.Date;

/**
 * Authority
 * @author bdqn_hl
 * @date 2014-2-21
 */
public class fCook extends Base{
	
	
	private String fName;
	private String fKey;
	private String fImg;
	private float fPrice;
	private String fClassify;
	private String chFunction;
	private String address;
	private int windowId;
	private String  school;
	private String froom;
	private int adminId ;
	private int isPub  ;
	private float everyone;
	
	public float getEveryone() {
		return everyone;
	}
	public void setEveryone(float everyone) {
		this.everyone = everyone;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public int getIsPub() {
		return isPub;
	}
	public void setIsPub(int isPub) {
		this.isPub = isPub;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getFroom() {
		return froom;
	}
	public void setFroom(String froom) {
		this.froom = froom;
	}

	public String getfKey() {
		return fKey;
	}
	public void setfKey(String fKey) {
		this.fKey = fKey;
	}
	public String getfImg() {
		return fImg;
	}
	public void setfImg(String fImg) {
		this.fImg = fImg;
	}
	public float getfPrice() {
		return fPrice;
	}
	public void setfPrice(float fPrice) {
		this.fPrice = fPrice;
	}
	public String getfClassify() {
		return fClassify;
	}
	public void setfClassify(String fClassify) {
		this.fClassify = fClassify;
	}
	public String getChFunction() {
		return chFunction;
	}
	public void setChFunction(String chFunction) {
		this.chFunction = chFunction;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getWindowId() {
		return windowId;
	}
	public void setWindowId(int windowId) {
		this.windowId = windowId;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	

}
