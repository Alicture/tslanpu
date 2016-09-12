package cn.tslanpu.test.add.drug.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.drug.dao.DrugDao;
import cn.tslanpu.test.add.drug.domain.Drug;
import cn.tslanpu.test.pager.PageBean;

public class DrugService {

	private DrugDao drugDao = new DrugDao();

	public void add(Drug drug) throws SQLException {
		drugDao.add(drug);
	}

	

	public  Drug drugFind(int id) {
		try {
			return  drugDao.drugFind(id);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}



	public PageBean<Drug> queryZ(String trim, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return  drugDao.queryZ( trim,  address,
					 department,fddelegate,zzcode,  pageCode);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}



	public void Update(Drug drug) {
		try {
			drugDao.update(drug);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}



	public void delete(int parseInt) {
		try {
			drugDao.delete(parseInt);
		} catch (Exception e) {
			System.out.println(e);
			throw new  RuntimeException(e);
		}
	}

}
