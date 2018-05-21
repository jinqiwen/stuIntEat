package org.stuIntelEat.pojo;

import java.util.Date;

/**
 * Authority
 * @author bdqn_hl
 * @date 2014-2-21
 */
public class FoodMake extends Base{
	
	private int fId;
	private int mId;
	private String mName;
	private float content;
    private String school ;
    private String froom;
    private int adminId;
   
    
    //项目业务需要添加的属性
    private String fName;

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
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

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public int getfId() {
		return fId;
	}

	public void setfId(int fId) {
		this.fId = fId;
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
	

}
