package org.stuIntelEat.service.Material;

import java.util.List;

import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.sMaterialNum;

public interface MaterialService {
	 //查询操作(super admin)
	   public MNurtrition getMaterialNur(MNurtrition mNurtrition);
	   public List<sMaterialNum> getMaterialList(sMaterialNum sMaterialNum) throws Exception;
	   
	 //查询操作(froom admin)
	   public List<sMaterialNum> getMateriallist(sMaterialNum materialNum) throws Exception;
	 //添加操作 (同时检索物料库)
	   public int addMaterial(sMaterialNum materialNum);
	 //验证操作(froom admin)
	   public int MaterialIsExit(MNurtrition mNurtrition) throws Exception;
	 //推荐操作(froom admin)
	   public List<String> RecomMaterial(MNurtrition mNurtrition) throws Exception;
	 //修改库存量操作(froom admin)
	   public int modifyContent(sMaterialNum materialNum);
	 //删除操作(froom admin)
	   public int delMaterial(int id);
	   
	   //查询原材料的数量
	   public int materialCount(sMaterialNum materialNum);
}
