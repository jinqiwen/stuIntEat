package org.stuIntelEat.controller;

import java.awt.event.FocusEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.annotation.Resource;
import javax.management.modelmbean.ModelMBeanNotificationInfo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.apache.log4j.Logger;
import org.stuIntelEat.controller.BaseController;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.FNurtrition;
import org.stuIntelEat.pojo.FoodMake;
import org.stuIntelEat.pojo.MNurtrition;
import org.stuIntelEat.pojo.MNurtritionSingle;
import org.stuIntelEat.pojo.fCook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.stuIntelEat.service.Admin.AdminService;
import org.stuIntelEat.service.FCook.FCookService;
import org.stuIntelEat.service.Material.MaterialService;
import org.stuIntelEat.service.MaterialSingle.MaterialSingleService;
import org.stuIntelEat.tool.Constants;
import org.stuIntelEat.tool.JsonDateValueProcessor;
import org.stuIntelEat.tool.PageSupport;
import org.stuIntelEat.tool.RedisAPI;
import org.stuIntelEat.tool.SQLTool;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import sun.awt.im.InputMethodJFrame;
import sun.security.util.Length;
@Controller
public class FCookController extends BaseController{
	@Resource
    private FCookService fCookService;
	@Resource
    private AdminService adminService;
	@Resource
    private MaterialService materialService;
	@Resource
    private MaterialSingleService materialSingleService;
	@Resource
    private RedisAPI redisAPI;
	private Logger logger =Logger.getLogger(FCookController.class);
    /*
     * 菜品列表(super admin)
     */
	@RequestMapping(value="backend/fCookList.html")
	public ModelAndView fCookList(HttpSession session,Model model,
			@RequestParam(value="s_school",required=false) String school,
			@RequestParam(value="s_froom",required=false) String froom,
			@RequestParam(value="currentpage",required=false) Integer currentpage
	) throws Exception {
	   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
		//list
	    SQLTool sqlTool=new SQLTool();
	    System.out.println("materiallist------------>");
		//sql
		fCook fCook=new fCook();
		if(!"".equalsIgnoreCase(school)&&school!=null){
			fCook.setSchool("%"+sqlTool.transfer(school)+"%");
		}
		if(!"".equalsIgnoreCase(froom)&&froom!=null){
			fCook.setFroom("%"+sqlTool.transfer(froom)+"%");
		}
		
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
		List<fCook> fCookList=fCookService.getFCookList(fCook);
		//��ѯ��Ӧ��Ʒ�ĳɷּ�����
		/*List<FoodMake> foodMakeList=null;
		for (fCook fcook : fCookList) {
	    foodMakeList=fCookService.getFoodMakeList(fcook.getId());
		}*/
		//��ѯ��Ӧ��Ʒ��ѧУ��ʳ�ü�����Ա
		List<Admin> AdminList=null;
		Admin admindemo;
		for (int i =0;i<fCookList.size();i++) {
			admindemo =adminService.getAdminById(fCookList.get(i).getAdminId());
			fCookList.get(i).setSchool(admindemo.getSchool());
			fCookList.get(i).setFroom(admindemo.getFroom());
			fCookList.get(i).setAdminId(admindemo.getId());
		}
		page.setItems(fCookList);
		int totalCount=fCookService.Fcookcount(fCook);
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
		//��page����adminList���·���ѡҳ
		model.addAttribute("page", page);
		
		return new ModelAndView("backend/fcookDemo");
		}
	/*
	 * ��ȡ������Ʒ�ɷ���Ϣ
	 */
	@RequestMapping(value = "backend/getfCook.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public String getfCook(
			@RequestParam(value="id",required=false) String id,
			@RequestParam(value="fName",required=false) String fName){
		String cjson = "";
		if(null == id || "".equals(id)){
			return "nodata";
		}else{
			try {
				fCook fcook = new fCook();
				fcook.setId(Integer.valueOf(id));
			    List<FoodMake> foodMakeList=fCookService.getFoodMakeList(Integer.parseInt(id));
			    if(!foodMakeList.isEmpty()) {
			    	 foodMakeList.get(0).setfName(fName);
			    }
				JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
				JSONArray jo = JSONArray.fromObject(foodMakeList,jsonConfig);
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
	 * ��ѯ����(froom admin)
	 */
	   @RequestMapping(value="/backend/foodCookList.html")
	   public ModelAndView getFoodCookList(HttpSession session,Model model,
			   @RequestParam(value="s_windowId",required=false) String windowId,
			   @RequestParam(value="s_fName",required=false) String fName,
			   @RequestParam(value="s_fClassify",required=false) String fClassify,
			   @RequestParam(value="currentpage",required=false) Integer currentpage
			   ) throws Exception{
		   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
			//list
		    SQLTool sqlTool=new SQLTool();
		    System.out.println("materiallist------------>");
			//sql
			fCook fCook=new fCook();
			if(!"".equalsIgnoreCase(fName)&&fName!=null){
				fCook.setfName("%"+sqlTool.transfer(fName)+"%");
			}
			if(!"".equalsIgnoreCase(fClassify)&&fClassify!=null){
				fCook.setfClassify("%"+sqlTool.transfer(fClassify)+"%");
			}
			if(!"".equalsIgnoreCase(windowId)&&windowId!=null) {
				fCook.setWindowId(Integer.parseInt(windowId));
			}
			Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
			fCook.setAdminId(admin.getId());
			
			//page
			PageSupport page=new PageSupport();
			try{
				int count =fCookService.Fcookcount(fCook);
				
				page.setTotalCount(count);
				page.setTotalPageCount(count);
			}catch (Exception e1) {
				// TODO: handle exception
				e1.printStackTrace();
				page.setTotalCount(0);
			}
			if(page.getTotalCount() > 0){
			 if(currentpage!=null){
				 page.setCurrentPageNo(currentpage);
			 }
			 System.out.println("=========>"+currentpage);
			 if(page.getCurrentPageNo()<=0){
				 page.setCurrentPageNo(1);
			 }
			 if(page.getCurrentPageNo()> page.getTotalPageCount()){
				 page.setCurrentPageNo(page.getTotalPageCount());
			 }
			 fCook.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
		     fCook.setPageSize(page.getPageSize());
		     List<fCook> fCookList1 = null;
		     try {
		    	 fCookList1=fCookService.getFoodCookList(fCook);
				}catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					fCookList1 = null;
					if(page == null){
						page = new PageSupport();
						page.setItems(null);
					}
				}
				page.setItems(fCookList1);
			}else{
				page.setItems(null);
			}
			
		
			model.addAllAttributes(baseModel);
			//��page����adminList���·���ѡҳ
			model.addAttribute("page", page);
			/*model.addAttribute("foodCookList", fCookList1);*/
		   return new ModelAndView("backend/fcookFroom");
	   }
	   /*
	    * ��Ʒ�ϼ�
	    */
	    @RequestMapping(value = "backend/pubFoodCook.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
		@ResponseBody
		public String pubFoodCook(HttpSession session,
				@RequestParam(value="p_id",required=false) String id){
		
			if(null == id || "".equals(id)){
				return "nodata";
			}else{
				try {
					fCook fcook = new fCook();
					fcook.setId(Integer.valueOf(id));
				    Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
					fcook.setAdminId(admin.getId());
					fcook.setIsPub(1);
				    fCookService.pubFoodCook(fcook);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "failed";
				}
					return "success";
			}
			
		}
	    /*
		 * 获取菜品(froom admin)
		 */
		@RequestMapping(value = "backend/getfoodCook.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
		@ResponseBody
		public String getfoodCook(HttpSession session,
				@RequestParam(value="m_id",required=false) String id){
			String cjson = "";
			if(null == id || "".equals(id)){
				return "nodata";
			}else{
				try {
					fCook fcook = new fCook();
					fcook.setId(Integer.valueOf(id));
					Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
					fcook.setAdminId(admin.getId());;
					fCook newfcook=fCookService.getfoodCook(fcook);
		            FoodMake foodMake=new FoodMake();
		            foodMake.setfId(Integer.parseInt(id));
		            foodMake.setAdminId(admin.getId());
		            List<FoodMake> foodMakeList=fCookService.getfMakelist(foodMake);
		            if(!foodMakeList.equals("")&&foodMakeList!=null) {
		            foodMakeList.get(0).setfName(newfcook.getfName());
		            }
		          
					JsonConfig jsonConfig = new JsonConfig();
					jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
					JSONArray jo = JSONArray.fromObject(foodMakeList,jsonConfig);
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
		 *获取更多(froom admin)
		 */
		@RequestMapping(value = "backend/getMorefCook.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
		@ResponseBody
		public String getMorefCook(HttpSession session,
				@RequestParam(value="m_id",required=false) String id){
			String cjson = "";
			if(null == id || "".equals(id)){
				return "nodata";
			}else{
				try {
					fCook fcook = new fCook();
					fcook.setId(Integer.parseInt(id));
					Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
					fcook.setAdminId(admin.getId());
					fCook newfcook=fCookService.getfoodCook(fcook);
					JsonConfig jsonConfig = new JsonConfig();
					jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
					JSONObject jo = JSONObject.fromObject(newfcook,jsonConfig);
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
		 * 添加菜品和原材料(froom admin)
		 */
		@RequestMapping(value = "/backend/addFoodCookAndMaterial.html", produces = {"text/html;charset=UTF-8"})
		public ModelAndView addFoodCookAndMaterial(HttpSession session,Model model,
				   @RequestParam(value="a_0",required=false) String a_0,
				   @RequestParam(value="a_1",required=false) String a_1,
				   @RequestParam(value="a_2",required=false) String a_2,
				   @RequestParam(value="a_3",required=false) String a_3,
				   @RequestParam(value="a_4",required=false) String a_4,
				   @RequestParam(value="a_5",required=false) String a_5,
				   @RequestParam(value="a_6",required=false) String a_6,
				   @RequestParam(value="a_7",required=false) String a_7,
				   @RequestParam(value="a_8",required=false) String a_8,
				   @RequestParam(value="a_9",required=false) String a_9,
				   @RequestParam(value="a_10",required=false) String a_10,
				   @RequestParam(value="a_11",required=false) String a_11, 
				   @RequestParam(value="a_12",required=false) String a_12,
				   @RequestParam(value="a_13",required=false) String a_13,
				   @RequestParam(value="a_14",required=false) String a_14,
				   @RequestParam(value="a_15",required=false) String a_15,
				   @RequestParam(value="a_16",required=false) String a_16,

				   @RequestParam(value="alabel_0",required=false) String alabel_0,
				   @RequestParam(value="alabel_1",required=false) String alabel_1,
				   @RequestParam(value="alabel_2",required=false) String alabel_2,
				   @RequestParam(value="alabel_3",required=false) String alabel_3,
				   @RequestParam(value="alabel_4",required=false) String alabel_4,
				   @RequestParam(value="alabel_5",required=false) String alabel_5,
				   @RequestParam(value="alabel_6",required=false) String alabel_6,
				   @RequestParam(value="alabel_7",required=false) String alabel_7,
				   @RequestParam(value="alabel_8",required=false) String alabel_8,
				   @RequestParam(value="alabel_9",required=false) String alabel_9,
				   @RequestParam(value="alabel_10",required=false) String alabel_10,
				   @RequestParam(value="alabel_11",required=false) String alabel_11, 
				   @RequestParam(value="alabel_12",required=false) String alabel_12,
				   @RequestParam(value="alabel_13",required=false) String alabel_13,
				   @RequestParam(value="alabel_14",required=false) String alabel_14,
				   @RequestParam(value="alabel_15",required=false) String alabel_15,
				   @RequestParam(value="alabel_16",required=false) String alabel_16,

				   @RequestParam(value="mf_fId",required=false) String fId,
				   
				   @RequestParam(value="a_fName",required=false) String a_fName,
				   @RequestParam(value="a_everyone",required=false) String a_everyone,
				   @RequestParam(value="a_fClassify",required=false) String a_fClassify,
				   @RequestParam(value="a_windowId",required=false) String a_windowId,
				   @RequestParam(value="a_fPrice",required=false) String a_fPrice,
				   @RequestParam(value="a_isPub",required=false) String a_isPub,
				   @RequestParam(value="ImgPicture",required=false) String ImgPicture,
				   @RequestParam(value="moreFCookFlag",required=false) String moreFCookFlag
				   ) throws Exception{
		    
			    fCook fCook=new fCook();
			   if(!"".equalsIgnoreCase(a_everyone)&&a_everyone!=null){
					fCook.setEveryone(Float.parseFloat(a_everyone));
				}
			   /*if(!"".equalsIgnoreCase(a_fClassify)&&a_fClassify!=null){
					fCook.setfClassify(a_fClassify);
				}*/
			   if(!"".equalsIgnoreCase(a_windowId)&&a_windowId!=null){
					fCook.setWindowId(Integer.parseInt(a_windowId));
				}
			   if(!"".equalsIgnoreCase(a_fPrice)&&a_fPrice!=null){
					fCook.setfPrice(Float.parseFloat(a_fPrice));
				}
			   if(!"".equalsIgnoreCase(a_isPub)&&a_isPub!=null){
					fCook.setIsPub(Integer.parseInt(a_isPub));
				}
			   if(!"".equalsIgnoreCase(a_fName)&&a_fName!=null){
					fCook.setfName(a_fName);
				}
			   if(!"".equalsIgnoreCase(a_fClassify)&&a_fClassify!=null){
					fCook.setfClassify(a_fClassify);
				}
			   if(!"".equalsIgnoreCase(ImgPicture)&&ImgPicture!=null){
					fCook.setfImg(ImgPicture);
				}
			  Admin admin=(Admin)session.getAttribute(Constants.Admin_SESSION);
			  fCook.setAdminId(admin.getId());
			 /*     fCook.setId(Integer.parseInt(fId));*/
			      fCookService.addfCook(fCook);
			 
			
			      String fKey="";
			
			      fCook fCook2=fCookService.getFCook(fCook);
			      int a_fId=fCook2.getId();
			
			String[] aold_names= {a_0,a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,a_9,a_10,a_11,a_12,a_13,a_14,a_15,a_16};
			List<String> a_names=new ArrayList<>();
			
			for (String string_c : aold_names) {
				if(string_c!=null && string_c.length()!=0){ 
					a_names.add(string_c);
					fKey+=","+string_c;	
				}
			}
		
		     fCook2.setfKey(fKey);
			 fCookService.modifyfCook(fCook2);
			System.out.println(a_names.size());
		
			String[] a_contents= {alabel_0,alabel_1,alabel_2,alabel_3,alabel_4,alabel_5,alabel_6,alabel_7,alabel_8,alabel_9,alabel_10,alabel_11,alabel_12,alabel_13,alabel_14,alabel_15,alabel_16};
		
			for(int i=0;i<a_names.size();i++) {
				   System.out.println(a_names.get(i));
				   if((a_names.get(i).equals(""))||(a_names.get(i)==null)||(a_names.get(i)=="")||(a_names.get(i).equals(null))||(a_names.get(i).length()<=0)) {
					   break;
				   }else {
					   FoodMake foodMake=new FoodMake();
						String content=a_contents[i];
						String name=a_names.get(i).trim();
						content=content.replace('g', ' ').trim();
						if(!name.equals("")&&name!=null) {
							foodMake.setmName(name);
							}
						if(!content.equals("")&&content!=null) {             
							foodMake.setContent(Integer.parseInt(content));
							}
						foodMake.setfId(a_fId);
						foodMake.setAdminId(admin.getId());
					
						MNurtrition mNurtrition=new MNurtrition();
						mNurtrition.setmName(name);
						mNurtrition=materialService.getMaterialNur(mNurtrition);
						
						foodMake.setmId(mNurtrition.getId());
						fCookService.addfMake(foodMake);
				}
				   
			   }
			return new ModelAndView("redirect:foodCookList.html");
		}
		/*
		 * 保存菜品信息
		 */
	@RequestMapping(value = "/backend/saveFoodCook.html", produces = {"text/html;charset=UTF-8"})
		public ModelAndView saveFoodCook(HttpSession session,Model model,
				   @RequestParam(value="m_0",required=false) String m_0,
				   @RequestParam(value="m_1",required=false) String m_1,
				   @RequestParam(value="m_2",required=false) String m_2,
				   @RequestParam(value="m_3",required=false) String m_3,
				   @RequestParam(value="m_4",required=false) String m_4,
				   @RequestParam(value="m_5",required=false) String m_5,
				   @RequestParam(value="m_6",required=false) String m_6,
				   @RequestParam(value="m_7",required=false) String m_7,
				   @RequestParam(value="m_8",required=false) String m_8,
				   @RequestParam(value="m_9",required=false) String m_9,
				   @RequestParam(value="m_10",required=false) String m_10,
				   @RequestParam(value="m_11",required=false) String m_11, 
				   @RequestParam(value="m_12",required=false) String m_12,
				   @RequestParam(value="m_13",required=false) String m_13,
				   @RequestParam(value="m_14",required=false) String m_14,
				   @RequestParam(value="m_15",required=false) String m_15,
				   @RequestParam(value="m_16",required=false) String m_16,
				   @RequestParam(value="m_17",required=false) String m_17,
				   @RequestParam(value="m_18",required=false) String m_18,
				   @RequestParam(value="m_19",required=false) String m_19,
				   @RequestParam(value="m_20",required=false) String m_20,
				   
				   @RequestParam(value="mlabel_0",required=false) String mlabel_0,
				   @RequestParam(value="mlabel_1",required=false) String mlabel_1,
				   @RequestParam(value="mlabel_2",required=false) String mlabel_2,
				   @RequestParam(value="mlabel_3",required=false) String mlabel_3,
				   @RequestParam(value="mlabel_4",required=false) String mlabel_4,
				   @RequestParam(value="mlabel_5",required=false) String mlabel_5,
				   @RequestParam(value="mlabel_6",required=false) String mlabel_6,
				   @RequestParam(value="mlabel_7",required=false) String mlabel_7,
				   @RequestParam(value="mlabel_8",required=false) String mlabel_8,
				   @RequestParam(value="mlabel_9",required=false) String mlabel_9,
				   @RequestParam(value="mlabel_10",required=false) String mlabel_10,
				   @RequestParam(value="mlabel_11",required=false) String mlabel_11, 
				   @RequestParam(value="mlabel_12",required=false) String mlabel_12,
				   @RequestParam(value="mlabel_13",required=false) String mlabel_13,
				   @RequestParam(value="mlabel_14",required=false) String mlabel_14,
				   @RequestParam(value="mlabel_15",required=false) String mlabel_15,
				   @RequestParam(value="mlabel_16",required=false) String mlabel_16,
				   @RequestParam(value="mlabel_17",required=false) String mlabel_17,
				   @RequestParam(value="mlabel_18",required=false) String mlabel_18,
				   @RequestParam(value="mlabel_19",required=false) String mlabel_19,
				   @RequestParam(value="mlabel_20",required=false) String mlabel_20,
				   @RequestParam(value="mf_fId",required=false) String fId,
				   
				   @RequestParam(value="m_everyone",required=false) String m_everyone,
				   @RequestParam(value="m_fClassify",required=false) String m_fClassify,
				   @RequestParam(value="m_windowId",required=false) String m_windowId,
				   @RequestParam(value="m_fPrice",required=false) String m_fPrice,
				   @RequestParam(value="ImgPicture",required=false) String ImgPicture,
				   @RequestParam(value="moreFCookFlag",required=false) String moreFCookFlag
				   ) throws Exception{
	
		String[] mold_contents= {m_0,m_1,m_2,m_3,m_4,m_5,m_6,m_7,m_8,m_9,m_10,m_11,m_12,m_13,m_14,m_15,m_16,m_17,m_18,m_19,m_20};
		List<String> m_contents=new ArrayList<>();
		
		for (String string_c : mold_contents) {
			if(string_c!=null && string_c.length()!=0){ 
			m_contents.add(string_c);
			}
		}
		System.out.println(m_contents.size());
		
		String[] m_mIds= {mlabel_0,mlabel_1,mlabel_2,mlabel_3,mlabel_4,mlabel_5,mlabel_6,mlabel_7,mlabel_8,mlabel_9,mlabel_10,mlabel_11,mlabel_12,mlabel_13,mlabel_14,mlabel_15,mlabel_16,mlabel_17,mlabel_18,mlabel_19,mlabel_20};
		
	   for(int i=0;i<m_contents.size();i++) {
		   System.out.println(m_contents.get(i));
		   if((m_contents.get(i).equals(""))||(m_contents.get(i)==null)||(m_contents.get(i)=="")||(m_contents.get(i).equals(null))||(m_contents.get(i).length()<=0)) {
			   break;
		   }else {
			   FoodMake foodMake=new FoodMake();
				String mId=m_mIds[i];
				String mcontent=m_contents.get(i);
				mcontent=mcontent.replace('g', ' ').trim();
				if(!mId.equals("")&&mId!=null) {
					foodMake.setmId(Integer.parseInt(mId));
					}
				if(!mcontent.equals("")&&mcontent!=null) {             
					foodMake.setContent(Integer.parseInt(mcontent));
					}
				foodMake.setfId(Integer.parseInt(fId));
				fCookService.modifyfMake(foodMake);
		}
		   
	   }
	  
	   if("1".equals(moreFCookFlag)) {
	   fCook fCook=new fCook();
	   if(!"".equalsIgnoreCase(m_everyone)&&m_everyone!=null){
			fCook.setEveryone(Float.parseFloat(m_everyone));
		}
	   if(!"".equalsIgnoreCase(m_fClassify)&&m_fClassify!=null){
			fCook.setfClassify(m_fClassify);
		}
	   if(!"".equalsIgnoreCase(m_windowId)&&m_windowId!=null){
			fCook.setWindowId(Integer.parseInt(m_windowId));
		}
	   if(!"".equalsIgnoreCase(m_fPrice)&&m_fPrice!=null){
			fCook.setfPrice(Float.parseFloat(m_fPrice));
		}
	   if(!"".equalsIgnoreCase(ImgPicture)&&ImgPicture!=null){
			fCook.setfImg(ImgPicture);
		}
	      fCook.setId(Integer.parseInt(fId));
	      fCookService.modifyfCook(fCook);
	   }
		return new ModelAndView("redirect:foodCookList.html");
		}
	/*
	 * 删除菜品(froom admin)
	 */
	@RequestMapping(value = "/backend/delFoodCook.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public Object delUser(@RequestParam(value="d_id",required=false) String id){
		
		if(null == id || "".equals(id)){
			return "nodata";
		}else{
			try {
				fCookService.delFoodCook(Integer.parseInt(id));
				return "success";
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				
		}
		
	}
		/*
		 * 删除发布菜品
		 */
		@RequestMapping(value = "/backend/delpic.html", produces = {"text/html;charset=UTF-8"})
		@ResponseBody
		public String delPic(@RequestParam(value="picpath",required=false) String picpath,
							 @RequestParam(value="id",required=false) String id,
							HttpServletRequest request,HttpSession session){
			String result= "failed" ;
			if(picpath == null || picpath.equals("")){
				result = "success"; 
			}else{
				String[] paths = picpath.split("/");
				
				String path = request.getSession().getServletContext().getRealPath(paths[2]+File.separator+paths[3]+File.separator+paths[4]);  
				logger.debug("ɾ��·����"+path );
				File file = new File(path);
			    
			    if(file.exists())
			     if(file.delete()){
			    	 if(id.equals("0")){
			    		 result = "success";
			    	 }else{
			    		 fCook fCook = new fCook();
			    		 fCook.setId(Integer.valueOf(id));
				    	 if(picpath.indexOf("_IDcard.jpg") != -1)
				    		 fCook.setfImg(picpath);
				    	 try {
							if(fCookService.delFcookPic(fCook) > 0){
								logger.debug("modify----fCookService.delFcookPic======== " );
								result = "success";
							}
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							return result;
						}
			    	 }
			    }
			}
			return result;
		}
		/*
		 * 上传图片
		 */
		@RequestMapping(value = "/backend/upload.html", produces = {"text/html;charset=UTF-8"})  
		@ResponseBody
	    public Object upload(@RequestParam(value = "a_fileInputID", required = false) MultipartFile cardFile,
	    					 HttpServletRequest request,HttpSession session) {  
	  
	        String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");  
	         logger.debug(" path======== " + path);
	    
	        if(cardFile != null){
	        	String oldFileName = cardFile.getOriginalFilename();
	        	
	            String prefix=FilenameUtils.getExtension(oldFileName);     
	            logger.debug("hanlu bankFile prefix======== " + prefix);
	            if(cardFile.getSize() >  5000000){//�ϴ���С���ó��� 5000k=5m
	            	return "1";
	            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
	            		|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")){//�ϴ�ͼƬ��ʽ����ȷ
	          	String fileName = System.currentTimeMillis()+RandomUtils.nextInt(1000000)+"_IDcard.jpg";  
	                logger.debug(" new fileName======== " + cardFile.getName());
	                File targetFile = new File(path, fileName);  
	                if(!targetFile.exists()){  
	                    targetFile.mkdirs();  
	                }  
	              
	                try {  
	                	  
	                	cardFile.transferTo(targetFile);  
	                } catch (Exception e) {  
	                    e.printStackTrace();  
	                }  
	                
	              String url =request.getContextPath()+"/statics/uploadfiles/"+fileName;
	             /* fCook fCook =new fCook();
	              fCook.setfImg(url);
	              fCook.setId(Integer.parseInt(flag));
	              fCookService.modifyfCook(fCook);*/
	              /*  String url ="../statics/uploadfiles/"+fileName;*/
	                return url;  
	            }else{
	            	return "2";
	            }
	        }

	        return null;
	    }  
		
     /*   String url = request.getContextPath()+"/statics/uploadfiles/"+fileName;
        fCook fCook=new fCook();
        fCook.setfImg(url);
        fCook.setId(Integer.parseInt(flag));
        fCookService.modifyfCook(fCook);*/
		
		
		

		/*
		 * 
		 * f_nurtration 的计算,返回菜品的营养素含量
		 * 传入一个map,key为原材料的名称，value是含量,注意这个标准是网上每份500的概念
		 */
		public FNurtrition calculateFCookNur(Map<String,Float> m,String fName) throws Exception {
			/*m.put("蛋白质", 1.1);
			m.put("脂肪", 1.1);
			m.put("碳水化合物", 1.1);
			m.put("热量", 1.1);
			m.put("钠", 1.1);*/
			List<MNurtrition> mNurtritions=new ArrayList<>();
			Float obj;
			int i =0;
			float Ca =0;
	        float Carbohy=0;
	        float Carotenes=0;
	        float Cholesterol=0;
	        float Cu=0;
	        float Fat=0;
	        float Fe=0;
	        float Fibrin=0;
	        float HeatCount=0;
	        float K=0;
	        float Mg=0;
	        float Mn=0;
	        float Na=0;
	        float Niacin=0;
	        float P=0;
	        float Protein=0;
	        float Riboflavin=0;
	        float Se=0;
	        float Thiamine=0;
	        float vA=0;
	        float vB=0;
	        float vC=0;
	        float vE=0;
	        float Zn=0;
			for (Entry<String, Float> entry : m.entrySet()) {
		        obj = entry.getValue();
		        if (obj != null) {
		            System.out.println(obj);
		            MNurtrition mNurtrition=new MNurtrition();
		            mNurtrition.setmName(entry.getKey());
		            MNurtrition resultMNur=materialService.getMaterialNur(mNurtrition);
		            if(resultMNur!=null) { 
		            MNurtritionSingle msingle=new MNurtritionSingle();
		            msingle.setmName(resultMNur.getmName());
		            MNurtritionSingle ms=materialSingleService.getMaterialSingleNur(msingle);
		            if(ms!=null) {
		            	    Ca +=ms.getCa();
				            Carbohy+=ms.getCarbohy();
				            Carotenes+=ms.getCarotenes();
				            Cholesterol+=ms.getCholesterol();
				            Cu+=ms.getCu();
				            Fat+=ms.getFat();
				            Fe+=ms.getFe();
				            Fibrin+=ms.getFibrin();
				            HeatCount+=ms.getHeatCount();
				            K+=ms.getK();
				            Mg+=ms.getMg();
				            Mn=ms.getMn();
				            Na+=ms.getNa();
				            Niacin+=ms.getNiacin();
				            P+=ms.getP();
				            Protein+=ms.getProtein();
				            Riboflavin+=ms.getRiboflavin();
				            Se+=ms.getSe();
				            Thiamine+=ms.getThiamine();
				            vA+=ms.getvA();
				            vB+=ms.getvB();
				            vC+=ms.getvC();
				            vE+=ms.getvE();
				            Zn+=ms.getZn();
		            }else {
		            //菜品单一原材料+含量的营养素结果
		            Ca +=resultMNur.getCa()/100*obj;
		            Carbohy+=resultMNur.getCarbohy()/100*obj;
		            Carotenes+=resultMNur.getCarotenes()/100*obj;
		            Cholesterol+=resultMNur.getCholesterol()/100*obj;
		            Cu+=resultMNur.getCu()/100*obj;
		            Fat+=resultMNur.getFat()/100*obj;
		            Fe+=resultMNur.getFe()/100*obj;
		            Fibrin+=resultMNur.getFibrin()/100*obj;
		            HeatCount+=resultMNur.getHeatCount()/100*obj;
		            K+=resultMNur.getK()/100*obj;
		            Mg+=resultMNur.getMg()/100*obj;
		            Mn=resultMNur.getMn()/100*obj;
		            Na+=resultMNur.getNa()/100*obj;
		            Niacin+=resultMNur.getNiacin()/100*obj;
		            P+=resultMNur.getP()/100*obj;
		            Protein+=resultMNur.getProtein()/100*obj;
		            Riboflavin+=resultMNur.getRiboflavin()/100*obj;
		            Se+=resultMNur.getSe()/100*obj;
		            Thiamine+=resultMNur.getThiamine()/100*obj;
		            vA+=resultMNur.getvA()/100*obj;
		            vB+=resultMNur.getvB()/100*obj;
		            vC+=resultMNur.getvC()/100*obj;
		            vE+=resultMNur.getvE()/100*obj;
		            Zn+=resultMNur.getZn()/100*obj;
		            MNurtritionSingle singleM=new MNurtritionSingle();
		            singleM.setCa(resultMNur.getCa()/100*obj);
		            singleM.setCarbohy(resultMNur.getCarbohy()/100*obj);
		            singleM.setCarotenes(resultMNur.getCarotenes()/100*obj);
		            singleM.setCholesterol(resultMNur.getCholesterol()/100*obj);
		            singleM.setCu(resultMNur.getCu()/100*obj);
		            singleM.setFat(resultMNur.getFat()/100*obj);
		            singleM.setFe(resultMNur.getFe()/100*obj);
		            singleM.setFibrin(resultMNur.getFibrin()/100*obj);
		            singleM.setHeatCount(resultMNur.getHeatCount()/100*obj);
		            singleM.setK(resultMNur.getK()/100*obj);
		            singleM.setMg(resultMNur.getMg()/100*obj);
		            singleM.setMn(resultMNur.getMn()/100*obj);
		            singleM.setNa(resultMNur.getNa()/100*obj);
		            singleM.setNiacin(resultMNur.getNiacin()/100*obj);
		            singleM.setP(resultMNur.getP()/100*obj);
		            singleM.setProtein(resultMNur.getProtein()/100*obj);      
		            singleM.setRiboflavin(resultMNur.getRiboflavin()/100*obj);
		            singleM.setSe(resultMNur.getSe()/100*obj);
		            singleM.setThiamine(resultMNur.getThiamine()/100*obj);
		            singleM.setvA(resultMNur.getvA()/100*obj);
		            singleM.setvB(resultMNur.getvB()/100*obj);
		            singleM.setvC(resultMNur.getvC()/100*obj);
		            singleM.setvE(resultMNur.getvE()/100*obj);
		            singleM.setZn(resultMNur.getZn()/100*obj);
		            materialSingleService.insertMaterialSingle(singleM);
		           /* i++;*/
		            }
		        }
		        }
			}
			FNurtrition resultfMNur=new FNurtrition();
			resultfMNur.setfName(fName);
			resultfMNur.setCa(Ca);
			resultfMNur.setCarbohy(Carbohy);
			resultfMNur.setCarotenes(Carotenes);
			resultfMNur.setCholesterol(Cholesterol);
			resultfMNur.setCu(Cu);
			resultfMNur.setFat(Fat);
			resultfMNur.setFe(Fe);
			resultfMNur.setFibrin(Fibrin);
			resultfMNur.setHeatCount(HeatCount);
			resultfMNur.setK(K);
			resultfMNur.setMg(Mg);
			resultfMNur.setMn(Mn);
			resultfMNur.setNa(Na);
			resultfMNur.setNiacin(Niacin);
			resultfMNur.setP(P);
			resultfMNur.setProtein(Protein);
			resultfMNur.setRiboflavin(Riboflavin);
			resultfMNur.setSe(Se);
			resultfMNur.setThiamine(Thiamine);
			resultfMNur.setvA(vA);
			resultfMNur.setvB(vB);
			resultfMNur.setvC(vC);
			resultfMNur.setvE(vE);
			resultfMNur.setZn(Zn);
			return resultfMNur;
		}
		@RequestMapping(value = "backend/showFNurtration.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
		@ResponseBody
		public String showFNurtration(HttpSession session,
				@RequestParam(value="s_id",required=false) String id){
			String cjson = "";
			if(null == id || "".equals(id)){
				return "nodata";
			}else{
				try {
					
					//传入菜品的id ===>在f_make中查找出mName和content存入map集合中，以及准备fName 做传入参数
		                Map<String,Float> map=new HashMap<>();
		                fCook cook=new fCook();
		                cook.setId(Integer.parseInt(id));;
		                cook=fCookService.getFCook(cook);
		            
					List<FoodMake> foodMakeList=fCookService.getFoodMakeList(Integer.parseInt(id));
					for (FoodMake foodMake : foodMakeList) {
						map.put(foodMake.getmName(), foodMake.getContent());
					}
					FNurtrition fNurtrition=calculateFCookNur(map, cook.getfName());
					JsonConfig jsonConfig = new JsonConfig();
					JSONArray jo = JSONArray.fromObject(fNurtrition,jsonConfig);
					cjson = jo.toString();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "failed";
				}
					return cjson;
			}
		}
			
		
}
