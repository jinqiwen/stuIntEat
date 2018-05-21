package org.stuIntelEat.pojo;

import java.util.Date;
/**
 * User
 * @author bdqn_hl
 * @date 2014-2-21
 */
public class MNurtrition extends Base{
	//在变量命名时不要大写字母开头
    private String mName;
	private float heatCount;
	private float fat;
	private float fibrin;
	private float vC;
	private float carotenes;
	private float riboflavin;
	private float cholesterol;
	private float ca;
	private float zn;
	private float mn;
	private float p ;
	private float se;
	private float carbohy;
	private float protein;
	private float vA;
	private float vE;
	private float thiamine;
	private float niacin;
	private float mg;
	private float fe;
	private float cu;
	private float k;
	private float na;
	private float vB;
	private int createId;
	private String createBy;
	private Date crateTime;
	private String  classify;
	
	//业务需要，伪变量
    private float content;
    private String school ;
    private String froom;
    private char partMName;
    
	
	public char getPartMName() {
		return partMName;
	}
	public void setPartMName(char partMName) {
		this.partMName = partMName;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public float getContent() {
		return content;
	}
	public void setContent(float content) {
		this.content = content;
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
	public float getHeatCount() {
		return heatCount;
	}
	public void setHeatCount(float heatCount) {
		this.heatCount = heatCount;
	}
	public float getFat() {
		return fat;
	}
	public void setFat(float fat) {
		this.fat = fat;
	}
	public float getFibrin() {
		return fibrin;
	}
	public void setFibrin(float fibrin) {
		this.fibrin = fibrin;
	}
	public float getvC() {
		return vC;
	}
	public void setvC(float vC) {
		this.vC = vC;
	}
	public float getCarotenes() {
		return carotenes;
	}
	public void setCarotenes(float carotenes) {
		this.carotenes = carotenes;
	}
	public float getRiboflavin() {
		return riboflavin;
	}
	public void setRiboflavin(float riboflavin) {
		this.riboflavin = riboflavin;
	}
	public float getCholesterol() {
		return cholesterol;
	}
	public void setCholesterol(float cholesterol) {
		this.cholesterol = cholesterol;
	}
	
	public float getCarbohy() {
		return carbohy;
	}
	public void setCarbohy(float carbohy) {
		this.carbohy = carbohy;
	}
	public float getProtein() {
		return protein;
	}
	public void setProtein(float protein) {
		this.protein = protein;
	}
	public float getvA() {
		return vA;
	}
	public void setvA(float vA) {
		this.vA = vA;
	}
	public float getvE() {
		return vE;
	}
	public void setvE(float vE) {
		this.vE = vE;
	}
	public float getThiamine() {
		return thiamine;
	}
	public void setThiamine(float thiamine) {
		this.thiamine = thiamine;
	}
	public float getNiacin() {
		return niacin;
	}
	public void setNiacin(float niacin) {
		this.niacin = niacin;
	}
	
	public float getCa() {
		return ca;
	}
	public void setCa(float ca) {
		this.ca = ca;
	}
	public float getZn() {
		return zn;
	}
	public void setZn(float zn) {
		this.zn = zn;
	}
	public float getMn() {
		return mn;
	}
	public void setMn(float mn) {
		this.mn = mn;
	}
	public float getP() {
		return p;
	}
	public void setP(float p) {
		this.p = p;
	}
	public float getSe() {
		return se;
	}
	public void setSe(float se) {
		this.se = se;
	}
	public float getMg() {
		return mg;
	}
	public void setMg(float mg) {
		this.mg = mg;
	}
	public float getFe() {
		return fe;
	}
	public void setFe(float fe) {
		this.fe = fe;
	}
	public float getCu() {
		return cu;
	}
	public void setCu(float cu) {
		this.cu = cu;
	}
	public float getK() {
		return k;
	}
	public void setK(float k) {
		this.k = k;
	}
	public float getNa() {
		return na;
	}
	public void setNa(float na) {
		this.na = na;
	}
	public float getvB() {
		return vB;
	}
	public void setvB(float vB) {
		this.vB = vB;
	}


	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	public int getCreateId() {
		return createId;
	}
	public void setCreateId(int createId) {
		this.createId = createId;
	}
	public Date getCrateTime() {
		return crateTime;
	}
	public void setCrateTime(Date crateTime) {
		this.crateTime = crateTime;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	
	
	
}
