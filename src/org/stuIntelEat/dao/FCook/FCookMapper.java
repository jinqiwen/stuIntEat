package org.stuIntelEat.dao.FCook;
import java.util.List;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.FNurtrition;
import org.stuIntelEat.pojo.FoodMake;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;
public interface FCookMapper {
   //查询操作(super admin)
   public fCook getFCook(fCook fcook);
   public List<fCook> getFCookList(fCook fcook) throws Exception;
   //查询对应菜品的原材料名称和数量
   public List<FoodMake> getFoodMakeList(int id) throws Exception;
   //查询对应菜品的学校和食堂(super admin)
   public List<FoodMake> getSfByadminIds(int id) throws Exception;
   //查询对应管理员的菜谱数量
   public int  Fcookcount(fCook fcook) throws Exception;
   //上架菜品(froom admin)
   public int pubFoodCook(fCook fcook);
   //查询操作(froom admin)
   public List<fCook> getFoodCookList(fCook fcook) throws Exception;
   //增加操作
   /*public int  addFoodMake(FoodMake foodMake);
   //删除操作
   public int delFoodMake(int id);*/
	
   //获取单个菜品操作(froom admin)
   public fCook getfoodCook(fCook fcook);
   public List<FoodMake> getfMakelist(FoodMake foodMake);
   //验证操作
  /* public int loginCodeIsExit(FoodMake foodMake) throws Exception;*/
   //删除菜品操作
   public int delFoodCook(int id);
  //删除图片操作
   public int delFcookPic(fCook fCook) throws Exception;
   //更新f_cook操作
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


