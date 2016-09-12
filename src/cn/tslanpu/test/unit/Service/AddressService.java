package cn.tslanpu.test.unit.Service;

import java.sql.SQLException;
import java.util.List;

import cn.tslanpu.test.unit.dao.AddressDao;
import cn.tslanpu.test.unit.domain.Address;

public class AddressService {
	private AddressDao addressDao = new AddressDao();
	public List<Address> queryAddress(){
		try {
			return addressDao.queryAddress();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public static void main(String[] args) {
		AddressService add = new AddressService();
		List<Address> list = add.queryAddress();
		for(Address lis : list){
			System.out.println(lis.getPosition());
		}
	}
}
