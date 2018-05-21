package org.stuIntelEat.dao.PubFCook;
import java.util.List;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.FoodMake;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;
import org.stuIntelEat.pojo.sMaterialNum;
public interface PubFCookMapper {
   //查询操作(super admin)
  /* public MNurtrition getMaterialNur(MNurtrition mNurtrition);
   public List<MNurtrition> getMaterialList(MNurtrition mNurtrition) throws Exception;*/
   //上架菜品(super admin)
   public List<fCook> getpubFCook(fCook fcook);
   //查询已上架菜品操作(froom admin)
   public List<fCook> getPubFoodCooklist(fCook fCook) throws Exception;
   //下架操作(froom admin)
   public int downFoodCook(fCook fCook);
   //查询上架菜品数量(froom admin)
   public int fCookcount(fCook fCook);
}


