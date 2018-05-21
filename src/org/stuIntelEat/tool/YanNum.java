package org.stuIntelEat.tool;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.wxapi.WxApiCall.WxApiCall;
import com.wxapi.model.RequestModel;

public class YanNum {
	 //创建验证码
	   public String createYan(String mobile){
		   String yannum=null;
		      if(mobile!=null&&!"".equals(mobile)){
					RequestModel model = new RequestModel();
					model.setGwUrl("https://way.jd.com/kaixintong/kaixintong");
					model.setAppkey("36109ad9ed3dc300f5ac8d9d75004747");
					Map queryMap = new HashMap();
					queryMap.put("mobile",mobile); //访问参数
					yannum=new String();
					for(int i=0;i<6;i++){
			        int  d1 = (int)(Math.random()*10);
			        yannum+=d1+"";
					}
					queryMap.put("content","【凯信通】您的验证码是："+yannum); //访问参数
				/* 	yannum=(String)queryMap.get("content"); 

		*/
					model.setQueryParams(queryMap);
					WxApiCall call = new WxApiCall();
					call.setModel(model);
					call.request();
		         
		         
		      }
		      return yannum;
}
}