package cn.tslanpu.test.add.usemed.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.usemed.dao.UsemedDao;
import cn.tslanpu.test.add.usemed.domain.Usemed;
import cn.tslanpu.test.pager.PageBean;

public class UsemedService {
private UsemedDao usemedDao = new UsemedDao();
	
	//增加信息
	public void add(Usemed usemed){
		try {
			usemedDao.add(usemed);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//更新信息
	public void usemedUpdate(int id, Usemed usemed){
		try {
			usemedDao.usemedUpdate(id, usemed);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询详细信息
	public Usemed usemedFind(int id){
		try {
			return usemedDao.usemedFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//查询
	public PageBean<Usemed> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return usemedDao.queryZ(qyname, address, department, fddelegate, zzcode,pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//删除
	public void delete(int id) {
		try {
			usemedDao.usemedDelete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
