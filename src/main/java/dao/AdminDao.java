package dao;

import model.Admin;;

public interface AdminDao {

	
	//-------- 관리자 id 찾기
	public Admin findByAdminId(Admin admin);
	public String findId(String id);
}
