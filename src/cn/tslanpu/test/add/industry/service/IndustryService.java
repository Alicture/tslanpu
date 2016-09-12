package cn.tslanpu.test.add.industry.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.industry.dao.IndustryDao;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.pager.PageBean;

public class IndustryService {
		
private IndustryDao industryDao = new IndustryDao();
	
	//增加信息
	public void add(Industry industry){
		try {
			industryDao.add(industry);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//更新信息
	public void industryUpdate(int id, Industry health){
		try {
			industryDao.industryUpdate(id, health);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询详细信息
	public Industry industryFind(int id){
		try {
			return industryDao.industryFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//查询
	public PageBean<Industry> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return industryDao.queryZ(qyname, address, department,fddelegate, zzcode, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//删除
	public void delete(int id) {
		try {
			industryDao.industryDelete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
