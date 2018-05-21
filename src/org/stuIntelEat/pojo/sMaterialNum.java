package org.stuIntelEat.pojo;

import java.util.Date;

public class sMaterialNum extends Base{
   private int adminId;
   private int mId;
   private String mName ;
   private float content ;
   private Date updateTime;
 //业务需要，伪变量
   private String school ;
   private String froom;
   private String adminName ;
   
public String getAdminName() {
	return adminName;
}
public void setAdminName(String adminName) {
	this.adminName = adminName;
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
public String getmName() {
	return mName;
}
public void setmName(String mName) {
	this.mName = mName;
}
public int getAdminId() {
	return adminId;
}
public void setAdminId(int adminId) {
	this.adminId = adminId;
}
public int getmId() {
	return mId;
}
public void setmId(int mId) {
	this.mId = mId;
}
public float getContent() {
	return content;
}
public void setContent(float content) {
	this.content = content;
}
public Date getUpdateTime() {
	return updateTime;
}
public void setUpdateTime(Date updateTime) {
	this.updateTime = updateTime;
}
   
}
