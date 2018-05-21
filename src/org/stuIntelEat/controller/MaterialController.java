package org.stuIntelEat.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.stuIntelEat.controller.BaseController;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.sMaterialNum;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.stuIntelEat.service.Admin.AdminService;
import org.stuIntelEat.service.Material.MaterialService;
import org.stuIntelEat.tool.Constants;
import org.stuIntelEat.tool.JsonDateValueProcessor;
import org.stuIntelEat.tool.PageSupport;
import org.stuIntelEat.tool.RedisAPI;
import org.stuIntelEat.tool.SQLTool;

import com.alibaba.fastjson.JSON;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONString;
import net.sf.json.JsonConfig;
@Controller
public class MaterialController extends BaseController{
	@Resource
    private MaterialService materialService;
	@Resource
    private AdminService adminService;
	
	@Resource
    private RedisAPI redisAPI;
	private Logger logger =Logger.getLogger(MaterialController.class);
    /*
     * 显示原材料列表(super admin )
     */
	@RequestMapping(value="backend/materialList.html")
	public ModelAndView materialList(HttpSession session,Model model,
			@RequestParam(value="s_school",required=false) String school,
			@RequestParam(value="s_loginCode",required=false) String loginCode,
			@RequestParam(value="currentpage",required=false) Integer currentpage
	) throws Exception {
	   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
		//list
	    SQLTool sqlTool=new SQLTool();
	    System.out.println("materiallist------------>");
		//sql
	    sMaterialNum sMaterialNum=new sMaterialNum();
		
	      Admin admin =new Admin();
	  
		if(!"".equalsIgnoreCase(school)&&school!=null){
			admin.setSchool("%"+sqlTool.transfer(school)+"%");
		}
		if(!"".equalsIgnoreCase(loginCode)&&loginCode!=null){
			admin.setLoginCode("%"+sqlTool.transfer(loginCode)+"%");
		}
		PageSupport pagef=new PageSupport();
		if(currentpage!=null){
			 pagef.setCurrentPageNo(currentpage);
		 }else {
			 pagef.setCurrentPageNo(1);
		 }
		admin.setStarNum((pagef.getCurrentPageNo() - 1) * pagef.getPageSize());
		admin.setPageSize(pagef.getPageSize());
		//得到的结果要是唯一的才符合逻辑
		List<Admin> admins=adminService.getAdminList(admin);
		
		
		//page,
		PageSupport page=new PageSupport();
		if(currentpage!=null){
			 page.setCurrentPageNo(currentpage);
		 } 
		if(currentpage==null) {
			 page.setCurrentPageNo(1);
		 }
		sMaterialNum.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
		sMaterialNum.setPageSize(page.getPageSize());
		List<sMaterialNum> MNumList=materialService.getMaterialList(sMaterialNum);
		int count =materialService.materialCount(sMaterialNum);
		page.setTotalCount(count);
		page.setTotalPageCount(count);
		if(!MNumList.isEmpty()) {
	         for (sMaterialNum materialNum : MNumList) {
	        	 if(!admins.isEmpty()) {
	        		 materialNum.setSchool(admins.get(0).getSchool());
		        	 materialNum.setFroom(admins.get(0).getFroom());
		        	 materialNum.setAdminName(admins.get(0).getName());	 
	        	 }
	        	 
			}
	         page.setItems(MNumList);
		}
		 //将查询的结果列输入到pagesupport中
		 System.out.println("=========>"+currentpage);
		 if(page.getCurrentPageNo()<0){
			 page.setCurrentPageNo(1);
		 }
		 if(page.getCurrentPageNo()> page.getTotalPageCount()){
			 page.setCurrentPageNo(page.getTotalPageCount());
		 }
		model.addAllAttributes(baseModel);
		//此page包换adminList和下方的选页
		model.addAttribute("page", page);
		return new ModelAndView("backend/materialDemo");
		}
	/*
	 * 获取单个原材料信息
	 */
	@RequestMapping(value = "/backend/getmaterial.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public Object FindMaterial(@RequestParam(value="id",required=false) String id){
		String cjson = "";
		if(null == id || "".equals(id)){
			return "nodata";
		}else{
			try {
				MNurtrition mNurtrition = new MNurtrition();
				mNurtrition.setId(Integer.valueOf(id));
				mNurtrition =materialService.getMaterialNur(mNurtrition);
				JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
				JSONObject jo = JSONObject.fromObject(mNurtrition,jsonConfig);
				cjson = jo.toString();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				return cjson;
		}
		
	}
	
	 /*
	  * 查询操作(froom admin)
	  */
	@RequestMapping(value = "/backend/materiallist.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.GET)
	   public ModelAndView getMateriallist(HttpSession session,Model model,
			   @RequestParam(value="s_mName",required=false) String mName,
			   @RequestParam(value="currentpage",required=false) Integer currentpage) throws Exception{
		   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
			//list
		    SQLTool sqlTool=new SQLTool();
			
		    System.out.println("materiallist------------>");
			//sql
		    sMaterialNum materialNum=new sMaterialNum();
		    Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
			 materialNum.setAdminId(admin.getId());
			 if(!"".equalsIgnoreCase(mName)&&mName!=null){
			  materialNum.setmName("%"+sqlTool.transfer(mName)+"%");
				}
			//page,
			PageSupport page=new PageSupport();
			if(currentpage!=null){
				 page.setCurrentPageNo(currentpage);
			 }
			 if(currentpage==null) {
				 page.setCurrentPageNo(1);
			 }
			materialNum.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
			materialNum.setPageSize(page.getPageSize());
			List<sMaterialNum> materialNums=materialService.getMateriallist(materialNum);
			//------------------------------------日期类型转换----------------------------------------------------------------------
			JsonConfig jsonConfig = new JsonConfig();
			jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
			JSONArray joArray = JSONArray.fromObject(materialNums,jsonConfig);
			page.setItems(joArray);
			int totalCount =materialService.materialCount(materialNum);
			if(totalCount!=0&&!"".equals(totalCount)){
				page.setTotalCount(totalCount);
			} 
			page.setTotalPageCount(totalCount);
			 System.out.println("=========>"+currentpage);
			 if(page.getCurrentPageNo()<0){
				 page.setCurrentPageNo(1);
			 }
			 if(page.getCurrentPageNo()> page.getTotalPageCount()){
				 page.setCurrentPageNo(page.getTotalPageCount());
			 }
			 
			model.addAllAttributes(baseModel);
			//此page包换adminList和下方的选页
			model.addAttribute("page", page);
			return new ModelAndView("backend/materialNum");
		
	   }
	/*
     * 添加操作 (同时检索物料库)
     */
	 /*  public int addMaterial(sMaterialNum materialNum);*/
	@RequestMapping(value = "backend/saveMaterial.html",method=RequestMethod.POST)
	@ResponseBody
	public String addMaterial(HttpSession session,
			@RequestParam(value="a_mName",required=false) String mName,
			@RequestParam(value="a_content",required=false) String content
			){
		if(session.getAttribute(Constants.SESSION_BASE_MODEL) == null){
			return "failed";
		}else{
			try{
			    sMaterialNum materialNum=new sMaterialNum();
			   Admin a_admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
			    materialNum.setAdminId(a_admin.getId());
			    
			    MNurtrition mNurtrition=new MNurtrition();
			    mNurtrition.setmName(mName);
			    mNurtrition=materialService.getMaterialNur(mNurtrition);
				
				materialNum.setmId(mNurtrition.getId());
				materialNum.setContent(Float.parseFloat(content));
			    materialNum.setUpdateTime(new Date());
				materialNum.setmName(mName);
				materialService.addMaterial(materialNum);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "success";
		}
	}
	
	/*
	 * 验证操作(froom admin)
	 */
	@RequestMapping(value = "/backend/MaterialIsExist.html", produces = {"text/html;charset=UTF-8"})
	@ResponseBody
	   public String MaterialIsExit(@RequestParam(value="mName",required=false) String mName) throws Exception{
		        int count=0;
				String result = "failed";
				MNurtrition mNurtrition = new MNurtrition();
				mNurtrition.setmName(mName);
				count=materialService.MaterialIsExit(mNurtrition);
				 List<String> recomList=null;
				try {
					if(count == 0) {
						result = "only";
					    for(int i =0;i<mName.length();i++) {
					    	MNurtrition mNurtrition2=new MNurtrition();
					    	mNurtrition2.setPartMName(mName.charAt(i));
					        recomList=materialService.RecomMaterial(mNurtrition2);
					    }
					    String recomJsonList = JSON.toJSONString(recomList);
					    return recomJsonList;
					}else {
						result = "repeat";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return result;
				}
				return result;
			}
	/*
	 * 库存更新操作(froom admin)
	 */
	@RequestMapping(value = "/backend/modifyContent.html", produces = {"text/html;charset=UTF-8"})
	@ResponseBody
	   public String modifyContent(HttpSession session,
			   @RequestParam(value="m_id",required=false) String mId,
			   @RequestParam(value="m_content",required=false) String content) throws Exception{
		     
				try {
				       sMaterialNum materialNum=new sMaterialNum();
					    Admin a_admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
					    materialNum.setAdminId(a_admin.getId());
						materialNum.setmId(Integer.parseInt(mId));
						materialNum.setContent(Float.parseFloat(content));
					    materialNum.setUpdateTime(new Date());   
						materialService.modifyContent(materialNum);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "failed";
				}
				return "success";
			}
	/*
	 * 删除原材料操作
	 */
	@RequestMapping(value = "/backend/delMaterial.html", produces = {"text/html;charset=UTF-8"})
	@ResponseBody
	   public String delMaterial(HttpSession session,
			   @RequestParam(value="d_id",required=false) String id) throws Exception{
				try {
						materialService.delMaterial(Integer.parseInt(id));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "failed";
				}
				return "success";
			}
	
}

