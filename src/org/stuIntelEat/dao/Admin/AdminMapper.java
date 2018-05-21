package org.stuIntelEat.dao.Admin;
import java.util.List;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.fCook;
public interface AdminMapper {
   //查询操作
   public Admin getLoginAdmin(Admin admin);
   public List<Admin> getAdminList(Admin admin) throws Exception;
   /*public List<Admin> getAdminListBySearch(Admin admin) throws Exception;*/
   public Admin getAdminById(int id) throws Exception;
 
   //增加操作
   public int  addAdmin(Admin admin);
   //删除操作
   public int delAdminPic(Admin admin);
   public int delAdmin(int id);
	
   //更新操作
   public int modifyPwd(Admin admin) throws Exception;
   public int modifyAdmin(Admin admin);
   
   //验证操作
   public int count(Admin admin) throws Exception;
   public int loginCodeIsExit(String loginCode) throws Exception;
   }


