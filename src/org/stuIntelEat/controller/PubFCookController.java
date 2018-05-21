package org.stuIntelEat.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.fCook;
import org.stuIntelEat.service.Material.MaterialService;
import org.stuIntelEat.service.PubFCook.PubFCookService;
import org.stuIntelEat.tool.Constants;
import org.stuIntelEat.tool.PageSupport;
import org.stuIntelEat.tool.RedisAPI;
import org.stuIntelEat.tool.SQLTool;
@Controller
public class PubFCookController extends BaseController {
	@Resource
    private PubFCookService pubFCookService;
	
	@Resource
    private RedisAPI redisAPI;
	private Logger logger =Logger.getLogger(MaterialController.class);
	/*
	  * 显示发布菜品(super admin)
	  */
	   @RequestMapping(value="/backend/pubfCookList.html")
	   public ModelAndView pubfCookList(HttpSession session,Model model,
			    @RequestParam(value="s_adminId",required=false) String s_adminId,
				@RequestParam(value="s_fKey",required=false) String s_fKey,
				@RequestParam(value="currentpage",required=false) Integer currentpage) throws Exception{
		 
			   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
				//list
			    SQLTool sqlTool=new SQLTool();
			    System.out.println("pubFcooklist------------>");
				//sql
				
				fCook fCook=new fCook();
				if(!"".equalsIgnoreCase(s_fKey)&&s_fKey!=null){
					fCook.setfKey("%"+sqlTool.transfer(s_fKey)+"%");
				}
				/*if(Integer.parseInt(s_adminId)!=0){
					fCook.setAdminId(Integer.parseInt(s_adminId));
				}*/
				fCook.setIsPub(1);
				//page,
				PageSupport page=new PageSupport();
				if(currentpage!=null){
					 page.setCurrentPageNo(currentpage);
				 }
				 if(currentpage==null) {
					 page.setCurrentPageNo(1);
				 }
				fCook.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
				fCook.setPageSize(page.getPageSize());
				List<fCook> fCookList=pubFCookService.getpubFCook(fCook);
				page.setItems(fCookList);
				int totalCount=pubFCookService.fCookcount(fCook);
				if(totalCount!=0&&!"".equals(totalCount)){
					page.setTotalCount(totalCount);
				} 
			   
				 page.setTotalPageCount(totalCount);
				 if(page.getCurrentPageNo()<0){
					 page.setCurrentPageNo(1);
				 }
				 if(page.getCurrentPageNo()> page.getTotalPageCount()){
					 page.setCurrentPageNo(page.getTotalPageCount());
				 }
				
				model.addAllAttributes(baseModel);
			
				model.addAttribute("page", page);
				return new ModelAndView("backend/pubFCook");
				}
	 /*
	  * 显示发布菜品(froom admin)
	  */
	   @RequestMapping(value="/backend/pubfoodCookList.html")
	   public ModelAndView getPubFoodCooklist(HttpSession session,Model model,
				@RequestParam(value="s_fKey",required=false) String s_fKey,
				@RequestParam(value="currentpage",required=false) Integer currentpage) throws Exception{
		 
			   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
				//list
			    SQLTool sqlTool=new SQLTool();
			    System.out.println("pubFcooklist------------>");
				//sql
				
				fCook fCook=new fCook();
				if(!"".equalsIgnoreCase(s_fKey)&&s_fKey!=null){
					fCook.setfKey("%"+sqlTool.transfer(s_fKey)+"%");
				}
				fCook.setIsPub(1);
		    	Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
		    	fCook.setAdminId(admin.getId());
				//page,
				PageSupport page=new PageSupport();
				if(currentpage!=null){
					 page.setCurrentPageNo(currentpage);
				 }
				 if(currentpage==null) {
					 page.setCurrentPageNo(1);
				 }
				fCook.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
				fCook.setPageSize(page.getPageSize());
				List<fCook> fCookList=pubFCookService.getPubFoodCooklist(fCook);
		         page.setItems(fCookList);
		        int totalCount =pubFCookService.fCookcount(fCook);
		 		if(totalCount!=0&&!"".equals(totalCount)){
		 			page.setTotalCount(totalCount);
		 		} 
		 		page.setTotalPageCount(totalCount);
				 if(page.getCurrentPageNo()<0){
					 page.setCurrentPageNo(1);
				 }
				 if(page.getCurrentPageNo()> page.getTotalPageCount()){
					 page.setCurrentPageNo(page.getTotalPageCount());
				 }
				 
				
				model.addAllAttributes(baseModel);
				
				model.addAttribute("page", page);
				
				return new ModelAndView("backend/pubFCook");
				}
	   /*
	    * 下架(froom admin)
	    */
	  @RequestMapping(value="backend/downFoodCook.html", produces = {"text/html;charset=UTF-8"})
	  @ResponseBody
	  public String  downFoodCook(HttpSession session,@RequestParam(value="d_id",required=false) String id) {
				String result = "";
				if(null == id || "".equals(id)){
					result = "nodata";
				}else{
					try {
						fCook cook=new fCook();
						cook.setId(Integer.parseInt(id));
						cook.setIsPub(0);
						pubFCookService.downFoodCook(cook);
						result="success";
					} catch (Exception e) {
						// TODO Auto-generated catch block
						result = "failed";
					}
				}
				return result;
			}
		
	   
}
