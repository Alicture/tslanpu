package cn.tslanpu.test.unit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.unit.domain.Unit;

public class UnitDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public List<Unit> query() throws SQLException{
		String sql = "select * from unit order by id";
		return qr.query(sql, new BeanListHandler<Unit>(Unit.class));
	}
	
	public void add() throws SQLException{
		String sql = "insert into unit(department) values (?)";
		qr.update(sql);
	}
}
