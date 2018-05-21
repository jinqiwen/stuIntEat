package org.stuIntelEat.service.FCook;

import java.util.List;

import javax.annotation.Resource;
import javax.print.attribute.standard.RequestingUserName;

import org.springframework.stereotype.Service;
import org.stuIntelEat.dao.FCook.FCookMapper;
import org.stuIntelEat.dao.Material.MaterialMapper;
import org.stuIntelEat.pojo.FNurtrition;
import org.stuIntelEat.pojo.FoodMake;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;

import com.sun.org.apache.bcel.internal.generic.RETURN;
@Service
public class FCookServiceImpl implements FCookService {
	  @Resource
	    FCookMapper cookMapper;
	  
	  //查询操作(super admin)
		 public fCook getFCook(fCook fcook) {
			return cookMapper.getFCook(fcook);
		 }
		 public List<fCook> getFCookList(fCook fcook) throws Exception{
			 return cookMapper.getFCookList(fcook);
		 }
		  //查询对应菜品的原材料名称和数量
		 public List<FoodMake> getFoodMakeList(int id ) throws Exception{
			 return cookMapper.getFoodMakeList(id);
		 }
		   //查询对应菜品的学校和食堂
		 public List<FoodMake> getSfByadminIds(int id) throws Exception{
			 return cookMapper.getSfByadminIds(id);
		 }
		//查询操作(froom admin)
		   public List<fCook> getFoodCookList(fCook fcook) throws Exception{
			   return cookMapper.getFoodCookList(fcook);
		   }
		   //查询对应管理员的菜谱数量
		   public int  Fcookcount (fCook fcook) throws Exception{
			   return cookMapper.Fcookcount(fcook);
		   }
		 //菜品上架(froom admin)
		   public int pubFoodCook(fCook fcook){
			   return cookMapper.pubFoodCook(fcook);
		   }
		 //获取单个菜品操作(froom admin)
		   public fCook getfoodCook(fCook fcook) {
			  return cookMapper.getFCook(fcook);
		   }
		   public List<FoodMake> getfMakelist(FoodMake foodMake) {
			  return cookMapper.getfMakelist(foodMake);
		   }
		 //删除图片操作
		   public int delFcookPic(fCook fCook) throws Exception{
			   return cookMapper.delFcookPic(fCook);
		   }
		 //更新fcook操作
		   public int modifyfCook(fCook fCook) {
			   return cookMapper.modifyfCook(fCook);
		   }
		 //更新f_make操作
		   public int modifyfMake(FoodMake foodMake) {
			   return cookMapper.modifyfMake(foodMake);
		   }
		   //添加f_cook操作
		   public int addfCook(fCook fCook) {
			   return cookMapper.addfCook(fCook);
		   }
		   //添加f_make操作
		   public int addfMake(FoodMake foodMake) {
			   return cookMapper.addfMake(foodMake);
		   }
		   //删除菜品操作
		   public int delFoodCook(int id) {
			   return cookMapper.delFoodCook(id);
		   }
		   //添加f_nurtration操作
		   public int addfNurtration(FNurtrition fNurtrition){
			   return cookMapper.addfNurtration(fNurtrition);
		   }
		
}
