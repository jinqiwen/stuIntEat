package org.stuIntelEat.service.Admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.stuIntelEat.dao.Admin.AdminMapper;
import org.stuIntelEat.pojo.Admin;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminMapper adminMapper;

	// 注意要将用户输入的所有东西给获取
	// 查找操作
	public Admin getLoginAdmin(Admin admin) {
		return adminMapper.getLoginAdmin(admin);
	}

	public List<Admin> getAdminList(Admin admin) throws Exception {
		return adminMapper.getAdminList(admin);
	}

	public Admin getAdminById(int id ) throws Exception  {
		return adminMapper.getAdminById(id);
	}

	// 增加操作
	public int addAdmin(Admin admin) {
		return adminMapper.addAdmin(admin);
	}

	// 删除操作
	public int delAdminPic(Admin admin) {
		return adminMapper.delAdminPic(admin);
	}

	public int deleteAdmin(int id) {
		return adminMapper.delAdmin(id);
	}

	// 更新操作
	public int modifyPwd(Admin admin) throws Exception {
		return adminMapper.modifyPwd(admin);
	}

	public int modifyAdmin(Admin admin) {
		return adminMapper.modifyAdmin(admin);
	}

	// 验证操作
	public int count(Admin admin) throws Exception {
		return adminMapper.count(admin);
	}

	public int loginCodeIsExit(String loginCode) throws Exception {
		return adminMapper.loginCodeIsExit(loginCode);
	}



}
