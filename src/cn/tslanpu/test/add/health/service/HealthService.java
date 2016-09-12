package cn.tslanpu.test.add.health.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.health.dao.HealthDao;
import cn.tslanpu.test.add.health.domain.Health;
import cn.tslanpu.test.pager.PageBean;

public class HealthService {
	
	private HealthDao healthDao = new HealthDao();
	
	//增加信息
	public void add(Health health){
		try {
			healthDao.add(health);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//更新信息
	public void healthUpdate(int id, Health health){
		try {
			healthDao.healthUpdate(id, health);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询详细信息
	public Health healthFind(int id){
		try {
			return healthDao.healthFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//查询
	public PageBean<Health> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return healthDao.queryZ(qyname, address, department,fddelegate, zzcode, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//删除
	public void delete(int id) {
		try {
			healthDao.healthDelete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
