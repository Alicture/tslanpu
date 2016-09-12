package cn.tslanpu.test.add.medical.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.medical.dao.MedicalDao;
import cn.tslanpu.test.add.medical.domain.Medical;
import cn.tslanpu.test.pager.PageBean;

public class MedicalService {
private MedicalDao medicalDao = new MedicalDao();
	
	//增加信息
	public void add(Medical medical){
		try {
			medicalDao.add(medical);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//更新信息
	public void medicalUpdate(int id, Medical medical){
		try {
			medicalDao.medicalUpdate(id, medical);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//查询详细信息
	public Medical medicalFind(int id){
		try {
			return medicalDao.medicalFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//查询
	public PageBean<Medical> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return medicalDao.queryZ(qyname, address, department, fddelegate, zzcode,pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//删除
	public void delete(int id) {
		try {
			medicalDao.medicalDelete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
