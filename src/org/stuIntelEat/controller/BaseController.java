package org.stuIntelEat.controller;

import java.beans.PropertyEditorSupport;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.stuIntelEat.tool.Constants;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.stuIntelEat.pojo.Admin;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;


public class BaseController {
     /*   private Logger logger=Logger.getLogger(BaseController.class);*/
        private Admin currentAdmin;
        public Admin getCurrentAdmin() {
        	if(null==this.currentAdmin){
        	HttpServletRequest request=	((ServletRequestAttributes)(RequestContextHolder.getRequestAttributes())).getRequest();
        	HttpSession session=request.getSession(false);
        	if(session!=null){
        		currentAdmin=(Admin)session.getAttribute(Constants.Admin_SESSION);
        	}else{
        		currentAdmin=null;
        	}
        	}
			return currentAdmin;
		}
		public void setcurrentAdmin(Admin currentAdmin) {
			this.currentAdmin = currentAdmin;
		}
		
}
