package org.stuIntelEat.controller;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.Yan;
import org.stuIntelEat.service.Admin.AdminService;
import org.stuIntelEat.service.YanNum.YanNumService;
import org.stuIntelEat.tool.JsonDateValueProcessor;
import org.stuIntelEat.tool.YanNum;


import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

@Controller
public class YanNumController {
	@Resource
    private YanNumService yanNumService;
	private Logger logger =Logger.getLogger(MaterialController.class);
	
	
	
	@RequestMapping(value = "insertYanNum.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.GET)
	@ResponseBody
	public String Find(@RequestParam(value="mobile",required=false) String mobile,
			@RequestParam(value="yannum",required=false) String yannum){
		String cjson = "";
		if(null == mobile || "".equals(mobile)){
			return "nodata";
		}else{
			try {    
		
			logger.debug("后台存入验证码"+yannum);
		/*		
				//将对应的手机号和验证码存入数据库
	         YanNum yanService=new YanNum();
	         String yans=yanService.createYan(mobile);*/
			 Yan yan =new Yan();
			 yan.setMobile(mobile);
			 yan.setYanNum(yannum);
			 yan.setDate(new Date());
			 yanNumService.insertYan(yan);
				return "success";
			/*	JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
				JSONObject jo = JSONObject.fromObject(mNurtrition,jsonConfig);
				cjson = jo.toString();*/
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				
		}
		
	}
	
	@RequestMapping(value = "selYanNum.html", produces = {"text/html;charset=UTF-8"})
	@ResponseBody
	public Object sendFinal(@RequestParam(value="mobile",required=false) String mobile,
			@RequestParam(value="yannum",required=false) String yannum){
		String cjson = "";
		if(null == mobile || "".equals(mobile)){
			return "nodata";
		}else{
			try {
			    Yan yanNum =new Yan ();
				//将对应的手机号和验证码存入数据库
				yanNum.setMobile(mobile);
				yanNum= yanNumService.selectYan(mobile);
				if(yanNum.getYanNum()==yannum) {
					return "success";
				}else {
					return "failed";
				}
				
			/*	JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
				JSONObject jo = JSONObject.fromObject(mNurtrition,jsonConfig);
				cjson = jo.toString();*/
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				
		}
		
	}
}
