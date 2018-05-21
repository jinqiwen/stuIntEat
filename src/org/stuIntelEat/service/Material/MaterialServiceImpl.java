package org.stuIntelEat.service.Material;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.stuIntelEat.dao.Material.MaterialMapper;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.sMaterialNum;
@Service
public class MaterialServiceImpl implements MaterialService {
	  @Resource
	  MaterialMapper materialMapper;
	  
	 //查询操作(super admin)
	   public MNurtrition getMaterialNur(MNurtrition mNurtrition) {
		 return materialMapper.getMaterialNur(mNurtrition);
	   }
	  
	   public List<sMaterialNum> getMaterialList(sMaterialNum sMaterialNum) throws Exception{
		   return materialMapper.getMaterialList(sMaterialNum);
	   }
	 //查询操作(froom admin)
	   public List<sMaterialNum> getMateriallist(sMaterialNum materialNum) throws Exception{
		   return materialMapper.getMateriallist(materialNum);
	   }
	 //添加操作 (同时检索物料库)
	   public int addMaterial(sMaterialNum materialNum) {
		   return materialMapper.addMaterial(materialNum);
	   }
	 //验证操作(froom admin)
	   public int MaterialIsExit(MNurtrition mNurtrition) throws Exception{
		   return materialMapper.MaterialIsExit(mNurtrition);
	   }
	 //推荐操作(froom admin)
	   public List<String> RecomMaterial(MNurtrition mNurtrition) throws Exception{
		   return materialMapper.RecomMaterial(mNurtrition);
	   }
	   //修改库存量操作(froom admin)
	   public int modifyContent(sMaterialNum materialNum) {
		   return materialMapper.modifyContent(materialNum);
	   }
		 //删除操作(froom admin)
	   public int delMaterial(int id) {
		   return materialMapper.delMaterial(id);
	   }
	   //查询原材料的数量
	   public int materialCount(sMaterialNum materialNum){
		  return materialMapper.materialCount(materialNum);
	   }
}
