package org.stuIntelEat.service.MaterialSingle;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.stuIntelEat.dao.Material.MaterialMapper;
import org.stuIntelEat.dao.MaterialSingle.MaterialSingleMapper;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.MNurtritionSingle;
import org.stuIntelEat.pojo.sMaterialNum;
@Service
public class MaterialSingleServiceImpl implements MaterialSingleService {
	  @Resource
	  MaterialSingleMapper materialSingleMapper;
	//查询操作(super admin)
	   public MNurtritionSingle getMaterialSingleNur(MNurtritionSingle mNurtritionSingle) {
		   return materialSingleMapper.getMaterialSingleNur(mNurtritionSingle);
	   }
	   public int insertMaterialSingle(MNurtritionSingle mNurtritionSingle) throws Exception{
		   return materialSingleMapper.insertMaterialSingle(mNurtritionSingle);
	   }
	
}
