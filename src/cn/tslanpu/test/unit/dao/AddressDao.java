package cn.tslanpu.test.unit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.unit.domain.Address;

public class AddressDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public List<Address> queryAddress() throws SQLException{
		String sql = "select * from address";
		return qr.query(sql, new BeanListHandler<Address>(Address.class));
	}
}
