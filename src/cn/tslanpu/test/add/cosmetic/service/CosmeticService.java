package cn.tslanpu.test.add.cosmetic.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.cosmetic.dao.CosmeticDao;
import cn.tslanpu.test.add.cosmetic.domain.Cosmetic;
import cn.tslanpu.test.pager.PageBean;

public class CosmeticService {
	
	private CosmeticDao cosmeticDao = new CosmeticDao();
	
	//增加信息
	public void add(Cosmetic cosmetic){
		try {
			cosmeticDao.add(cosmetic);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//更新信息
	public void cosmeticUpdate(int id, Cosmetic cosmetic){
		try {
			cosmeticDao.cosmeticUpdate(id, cosmetic);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询详细信息
	public Cosmetic cosmeticFind(int id){
		try {
			return cosmeticDao.cosmeticFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//查询
	public PageBean<Cosmetic> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return cosmeticDao.queryZ(qyname, address, department,fddelegate, zzcode, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//删除
	public void delete(int id) {
		try {
			cosmeticDao.cosmeticDelete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
