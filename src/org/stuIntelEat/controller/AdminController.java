package org.stuIntelEat.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


import org.apache.log4j.Logger;
import org.apache.log4j.pattern.IntegerPatternConverter;
import org.stuIntelEat.controller.BaseController;
import org.stuIntelEat.pojo.Authority;
import org.stuIntelEat.pojo.Function;
import org.stuIntelEat.pojo.Menu;

import org.stuIntelEat.service.function.FunctionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.service.Admin.AdminService;
import org.stuIntelEat.tool.Constants;
import org.stuIntelEat.tool.JsonDateValueProcessor;
import org.stuIntelEat.tool.PageSupport;
import org.stuIntelEat.tool.RedisAPI;
import org.stuIntelEat.tool.SQLTool;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
@Controller
public class AdminController extends BaseController{
	@Resource
    private AdminService adminService;
	@Resource
    private FunctionService functionService;
	@Resource
    private RedisAPI redisAPI;
	private Logger logger =Logger.getLogger(AdminController.class);
	@RequestMapping(value="/login")
	public String  login() {
		
		logger.debug("LoggerController welcome DevadminController");
		return "login";
	}

	@RequestMapping(value="/dologin.html")
	@ResponseBody
	public String dologin(HttpSession session,@RequestParam String admin){
	
	if(null == admin || "".equals(admin)){
			return "nodata";
		}else{
	  
	    JSONObject adminObject=JSONObject.fromObject(admin);
		Admin adminObj=(Admin)JSONObject.toBean(adminObject, Admin.class);
		Admin  readmin=adminService.getLoginAdmin(adminObj);
	 try {
		 if(readmin!=null){
		  		session.setAttribute(Constants.Admin_SESSION,readmin);
		  		if(readmin.getRoleId()==1 ||readmin.getRoleId()==2) {
		  			return "success1";
		  		}else {
		  			return "success2";
		  		}
		  		
		  	
		  		
     }else {
        return "nodata";
    }
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return "failed";
	} 
    }
		
	}
	
	
	@RequestMapping("/dolog.html")
	@ResponseBody
	public String dolog(HttpSession session,@RequestParam String admin){
	
	if(null == admin || "".equals(admin)){
			return "nodata";
		}else{
	 try {
      return "success1";
    } catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return "failed";
	} 
    }
		
	}
    /*
     * 进入公司管理员账户
     */
	@RequestMapping(value ="main1.html")
	public ModelAndView main(HttpSession session) {
		Admin admin = (Admin)session.getAttribute(Constants.Admin_SESSION);
		logger.debug("main--------------------->");
		List<Menu> menulList = null;
		if (admin != null) {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("admin", admin);
			/*
			 * key :menuList+roleId---->eg:key:menuList2
			 * value :mList
			 */
			if(redisAPI.exist("menuList"+admin.getRoleId())){
				String rediString=redisAPI.get("menuList"+admin.getRoleId());
			
				if(rediString!=null&&!"".equals(rediString)){
					model.put("mList", rediString);
				}			
			}else {
				menulList = getFunByCurrent(admin.getRoleId());
				if (null != menulList) {
					JSONArray  jsonArray  = JSONArray.fromObject(menulList);
					String jsonString =  jsonArray.toString();
					logger.debug("--------->jsonString"+jsonString);
					model.put("mList", jsonString);
					redisAPI.set("menuList"+admin.getRoleId(), jsonString);
				}
				
			}	
			session.setAttribute(Constants.SESSION_BASE_MODEL, model);
			return new ModelAndView("main2", model);
		}
		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value ="/main2.html")
	public ModelAndView main2(HttpSession session) {
		Admin admin = (Admin)session.getAttribute(Constants.Admin_SESSION);
		logger.debug("main--------------------->");
		List<Menu> menulList = null;
		if (admin != null) {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("admin", admin);
			/*
			 * key :menuList+roleId---->eg:key:menuList2
			 * value :mList
			 */
			if(redisAPI.exist("menuList"+admin.getRoleId())){
				String rediString=redisAPI.get("menuList"+admin.getRoleId());
			
				if(rediString!=null&&!"".equals(rediString)){
					model.put("mList", rediString);
				}			
			}else {
				menulList = getFunByCurrent(admin.getRoleId());
				if (null != menulList) {
					JSONArray  jsonArray  = JSONArray.fromObject(menulList);
					String jsonString =  jsonArray .toString();
					logger.debug("--------->jsonString"+jsonString);
					model.put("mList", jsonString);
					redisAPI.set("menuList"+admin.getRoleId(), jsonString);
				}
				
			}	
			session.setAttribute(Constants.SESSION_BASE_MODEL, model);
			return new ModelAndView("main2", model);
		}
		return new ModelAndView("redirect:/");
	}
	protected List<Menu> getFunByCurrent(int roleId) {
		List<Function> mainList =new ArrayList<Function>();
		
		List<Menu> menuList=new ArrayList<Menu>();
		Authority authority= new Authority();
	    authority.setRoleId(roleId);
		
	    	try {
				mainList =functionService.getMainFunctionList(authority);
				if(mainList!=null){
					for(Function function:mainList){
						 Menu menu=new Menu();
						 menu.setMainMenu(function);
						 function.setRoleId(roleId);	
			        	 menuList.add(menu);		
					}
				}
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			   
		return menuList;
		
	}
    /*
     * 管理员列表
     */
	@RequestMapping(value="/backend/adminList.html")
	public ModelAndView adminlist(HttpSession session,Model model,
			@RequestParam(value="name",required=false) String name,
			@RequestParam(value="position",required=false) String position,
			@RequestParam(value="roleId",required=false) String roleId,
			@RequestParam(value="school",required=false) String school,
			@RequestParam(value="froom",required=false) String froom,
			@RequestParam(value="createTime",required=false) Date createTime,
			@RequestParam(value="currentpage",required=false) Integer currentpage
	) throws Exception {
	   Map<String, Object> baseModel=(Map<String, Object>) session.getAttribute(Constants.SESSION_BASE_MODEL);
		//list
	   if(baseModel == null){
			return new ModelAndView("redirect:/");
		}else {
	    SQLTool sqlTool=new SQLTool();
	    System.out.println("adminlist------------>");
		Admin admin=new Admin();
		//sql
		if(name!=null){
			admin.setName("%"+sqlTool.transfer(name)+"%");
		}
		if(position!=null){
			admin.setPosition("%"+sqlTool.transfer(position)+"%");
		}
		if(!"".equalsIgnoreCase(roleId)&& roleId!=null){
			admin.setRoleId(Integer.parseInt(roleId));
		}
		if(school!=null){
			admin.setSchool("%"+sqlTool.transfer(school)+"%");
		}
		if(!"".equalsIgnoreCase(froom)&&froom!=null){
			admin.setFroom("%"+sqlTool.transfer(froom)+"%");
		}
		
		
		//page,
		PageSupport page=new PageSupport();
		if(currentpage!=null){
			 page.setCurrentPageNo(currentpage);
		 }
		 if(currentpage==null) {
			 page.setCurrentPageNo(1);
		 }
		 admin.setStarNum((page.getCurrentPageNo() - 1) * page.getPageSize());
		 admin.setPageSize(page.getPageSize());
		List<Admin> adminlist=adminService.getAdminList(admin);
			if(adminlist !=null && !"".equals(adminlist)){
				 page.setItems(adminlist);
			}
		int totalCount =adminService.count(admin);
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
		model.addAttribute("page", page);
	
		return new ModelAndView("backend/demo");
		}
	}
	@RequestMapping(value="exit.html")
	public String doexit(Admin admin){
		logger.debug("doexit--------------------");
		 return "exit";

	}
	@RequestMapping(value="register.html")
	public String  register(){
		return "register";
	}
	@RequestMapping(value="doregister.html")
	public String  doregister(Admin admin){
		logger.debug("doregister--------------------");
		if(admin!=null){
			int flag=0;
			  flag=adminService.addAdmin(admin);
			 if(flag==1){
				 return "registersuccess";
			 }else {
				 return "register";
			}
		}else {
			 return "register";
		}
	}
	/*
	 * 注销
	 */
	@RequestMapping(value="/logout")
	public String loginout(HttpSession session){
		session.removeAttribute(Constants.Admin_SESSION);
		return "devlogin";
	}
	
    /*
     * 更新管理员信息
     */
	@RequestMapping(value = "backend/modifyadmin.html",method=RequestMethod.POST)
	public ModelAndView modifyAdmin(HttpSession session,
			@RequestParam(value="m_id",required=false) String id,
			@RequestParam(value="m_name",required=false) String name,
			@RequestParam(value="m_sex",required=false) String sex,
			@RequestParam(value="m_department",required=false) String department,
			@RequestParam(value="m_position",required=false) String position,
			@RequestParam(value="m_school",required=false) String school,
			@RequestParam(value="m_telephone",required=false) String telephone,
			@RequestParam(value="m_froom",required=false) String froom,
			@RequestParam(value="m_role",required=false) String role
			){
		if(session.getAttribute(Constants.SESSION_BASE_MODEL) == null){
			return new ModelAndView("redirect:/");
		}else{
			try {
				
				Admin m_admin =new Admin();
				int roleId=0;
				if(role.equals("公司总经理")){
					roleId=1;
				}else if(role.equals("公司副经理")){
					roleId=2;
				}else if(role.equals("食堂总经理")){
					roleId=3;
				}else if(role.equals("食堂副经理")){
					roleId=4;
				}
				System.out.println("-----------------------");
				m_admin.setId(Integer.parseInt(id));
				m_admin.setName(name);
				if(sex.equals("男")) {
					m_admin.setSex(1);
				}else {
					m_admin.setSex(0);
				}
				m_admin.setDepartment(department);
				m_admin.setPosition(position);
				m_admin.setSchool(school);
				m_admin.setFroom(froom);
				m_admin.setTelephone(telephone);
				m_admin.setRoleId(roleId);
				adminService.modifyAdmin(m_admin);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return new ModelAndView("redirect:/backend/adminList.html");
		}
	}
	/*
     * 添加管理员
     */
	@RequestMapping(value = "backend/addadmin.html",method=RequestMethod.POST)
	public ModelAndView addAdmin(HttpSession session,
			@RequestParam(value="a_name",required=false) String name,
			@RequestParam(value="a_loginCode",required=false) String loginCode,
			@RequestParam(value="a_password",required=false) String password,
			@RequestParam(value="a_sex",required=false) String sex,
			@RequestParam(value="a_department",required=false) String department,
			@RequestParam(value="a_position",required=false) String position,
			@RequestParam(value="a_school",required=false) String school,
			@RequestParam(value="a_telephone",required=false) String telephone,
			@RequestParam(value="a_froom",required=false) String froom,
			@RequestParam(value="a_role",required=false) String role
			){
		if(session.getAttribute(Constants.SESSION_BASE_MODEL) == null){
			return new ModelAndView("redirect:/");
		}else{
			try {
				Admin a_admin =new Admin();
				int roleId=0;
				if(role.equals("公司总经理")){
					roleId=1;
				}else if(role.equals("公司副经理")){
					roleId=2;
				}else if(role.equals("食堂总经理")){
					roleId=3;
				}else if(role.equals("食堂副经理")){
					roleId=4;
				}
				System.out.println("-----------------------");
				a_admin.setName(name);
				if(sex.equals("男")) {
					a_admin.setSex(1);
				}else {
					a_admin.setSex(0);
				}
				System.out.println("-----------------------");
				a_admin.setName(name);
				a_admin.setPassword(password);
				Admin oneAdmin =adminService.getAdminById(1);
				a_admin.setInfo(oneAdmin.getInfo());
				a_admin.setCompany(oneAdmin.getCompany());
				
				a_admin.setCreateTime(new Date());
				a_admin.setDepartment(department);
				a_admin.setPosition(position);
				a_admin.setSchool(school);
				a_admin.setFroom(froom);
				a_admin.setLoginCode(loginCode);
				a_admin.setTelephone(telephone);
				a_admin.setRoleId(roleId);
				adminService.addAdmin(a_admin);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return new ModelAndView("redirect:/backend/adminList.html");
		}
	}
	/*
	 * 获取管理员个人信息
	 */
	@RequestMapping(value = "/backend/getadmin.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public Object FindUser(@RequestParam(value="id",required=false) String id){
		String cjson = "";
		if(null == id || "".equals(id)){
			return "nodata";
		}else{
			try {
				Admin admin = new Admin();
				admin.setId(Integer.valueOf(id));
				admin =adminService.getAdminById(admin.getId());
				JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
				JSONObject jo = JSONObject.fromObject(admin,jsonConfig);
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
	 *删除管理员
	 */
	@RequestMapping(value = "/backend/deladmin.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public Object delUser(@RequestParam(value="d_id",required=false) String id){
		
		if(null == id || "".equals(id)){
			return "nodata";
		}else{
			try {
				adminService.deleteAdmin(Integer.parseInt(id));
				return "success";
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				
		}
		
	}
	/*
	 *注销
	 */
	@RequestMapping(value = "/backend/logincodeisexit.html", produces = {"text/html;charset=UTF-8"},method=RequestMethod.POST)
	@ResponseBody
	public Object loginCodeIsExist(@RequestParam(value="loginCode",required=false) String loginCode){
		
		if(null == loginCode || "".equals(loginCode)){
			return "nodata";
		}else{
			try {
				int flag=adminService.loginCodeIsExit(loginCode);
				if(flag==1) {
			        return "repeat";
				}else {
			    	return "only";
				}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "failed";
			}
				
		}
		
	}
}
