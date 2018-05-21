package org.stuIntelEat.service.FCook;

import java.util.List;

import org.stuIntelEat.pojo.FNurtrition;
import org.stuIntelEat.pojo.FoodMake;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;

public interface FCookService {
	 //查询操作(super admin)
	 public fCook getFCook(fCook fcook);
	 public List<fCook> getFCookList(fCook fcook) throws Exception;
	 
	  //查询对应菜品的原材料名称和数量
	   public List<FoodMake> getFoodMakeList(int id ) throws Exception;
	   //查询对应菜品的学校和食堂
	   public List<FoodMake> getSfByadminIds(int id) throws Exception;
	   //查询操作(froom admin)
	   public List<fCook> getFoodCookList(fCook fcook) throws Exception;
	   //查询对应管理员的菜谱数量
	   public int  Fcookcount (fCook fcook) throws Exception;
	   //菜品上架(froom admin)
	   public int pubFoodCook(fCook fcook);
	   //获取单个菜品操作(froom admin)
	   public fCook getfoodCook(fCook fcook);
	   public List<FoodMake> getfMakelist(FoodMake foodMake);
	   //删除菜品操作
	   public int delFoodCook(int id);
	  //删除图片操作
	   public int delFcookPic(fCook fCook) throws Exception;
	  //更新fcook操作
	   public int modifyfCook(fCook fCook);
	  //更新f_make操作
	   public int modifyfMake(FoodMake foodMake); 
	  //添加f_cook操作
	   public int addfCook(fCook fCook); 
	   //添加f_make操作
	   public int addfMake(FoodMake foodMake); 
	   //添加f_nurtration操作
	   public int addfNurtration(FNurtrition fNurtrition); 
}
