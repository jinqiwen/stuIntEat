package org.stuIntelEat.service.MaterialSingle;

import java.util.List;

import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.MNurtritionSingle;
import org.stuIntelEat.pojo.sMaterialNum;

public interface MaterialSingleService {
	//查询操作(super admin)
	   public MNurtritionSingle getMaterialSingleNur(MNurtritionSingle mNurtritionSingle);
	   public int insertMaterialSingle(MNurtritionSingle mNurtritionSingle) throws Exception;
	
}
