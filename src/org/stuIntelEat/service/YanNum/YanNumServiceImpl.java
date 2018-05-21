package org.stuIntelEat.service.YanNum;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.stuIntelEat.pojo.Yan;

import com.wxapi.WxApiCall.WxApiCall;
import com.wxapi.model.RequestModel;


@Service
public class YanNumServiceImpl implements YanNumService {

	@Resource
	private org.stuIntelEat.dao.YanNum.YanNumMapper YanNumMapper;

	//存入验证码到数据库
	   public int insertYan(Yan yan) throws Exception{
		   return YanNumMapper.insertYan(yan);
	   }
	   //查询对应的数据库
	   public Yan selectYan(String mobile) throws Exception{
		   return YanNumMapper.selectYan(mobile);
	   }
	
}
