package cn.tslanpu.test.add.wine.service;

import java.sql.SQLException;

import cn.tslanpu.test.add.wine.dao.WineDao;
import cn.tslanpu.test.add.wine.domain.Wine;
import cn.tslanpu.test.pager.PageBean;

public class WineService {
	private WineDao wineDao = new WineDao();

	public void add(Wine wine) throws SQLException {
		wineDao.add(wine);
	}

	public PageBean<Wine> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return  wineDao.queryZ(qyname, address, department,fddelegate,zzcode, pageCode);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}


	public void Update(Wine wine) {
		try {
			wineDao.update(wine);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}



	public void delete(int parseInt) {
		try {
			wineDao.delete(parseInt);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}
	public  Wine wineFind(int id) {
		try {
			return  wineDao.wineFind(id);
		} catch (Exception e) {
			throw new  RuntimeException(e);
		}
	}
}
