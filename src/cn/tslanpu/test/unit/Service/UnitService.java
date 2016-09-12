package cn.tslanpu.test.unit.Service;

import java.sql.SQLException;
import java.util.List;

import cn.tslanpu.test.unit.dao.UnitDao;
import cn.tslanpu.test.unit.domain.Unit;

public class UnitService {
	private UnitDao unitDao = new UnitDao();
	public List<Unit> query(){
		try {
			return unitDao.query();
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public static void main(String[] args) {
		UnitService unit = new UnitService();
		System.out.println(unit.query().size());
	}
}
