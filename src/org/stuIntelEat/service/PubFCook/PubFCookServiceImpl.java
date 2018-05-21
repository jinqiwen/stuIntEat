package org.stuIntelEat.service.PubFCook;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.stuIntelEat.dao.Material.MaterialMapper;
import org.stuIntelEat.dao.PubFCook.PubFCookMapper;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;
import org.stuIntelEat.pojo.sMaterialNum;
@Service
public class PubFCookServiceImpl implements PubFCookService {
	  @Resource
	  PubFCookMapper pubFCookMapper;
	   //查询上架菜品(super admin)
	   public List<fCook> getpubFCook(fCook fcook) {
		   return pubFCookMapper.getpubFCook(fcook);
	   }
	   //查询已上架菜品操作(froom admin)
	   public List<fCook> getPubFoodCooklist(fCook fCook) throws Exception{
		   return pubFCookMapper.getPubFoodCooklist(fCook);
	   }
	   //下架操作(froom admin)
	   public int downFoodCook(fCook fCook) {
		   return pubFCookMapper.downFoodCook(fCook);
	   }
	 //查询上架菜品数量(froom admin)
	   public int fCookcount(fCook fCook) {
		   return pubFCookMapper.fCookcount(fCook);
	   }
}
