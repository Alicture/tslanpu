package cn.tslanpu.test.add.Criculate.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.Criculate.domain.Criculate;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class CriculateDao {
	private QueryRunner qr = new TxQueryRunner();
	//增加信息
	public void add(Criculate criculate) throws SQLException{
			String sql = "insert into criculate(qyname, address, scaddress, ems, qydelegate, qyphone, jjtype, email, gsorganization, zzcode, " +
					"cldate, nzyield, jyArea, propertyOwner, fangWuDate, fangWuWay, department, spdelegate, jiandurenyuan, xieguanrenyuan, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, foodMarket, superMarket, cvs, store, " +
					"foodTrade, foodLogistics, nonStoreFoodBusiness, onlineShop, mailOrder, televisedShopping, automat, piFa, packFood, bulkFood, " +
					"dairyProduct, hanBaby, noBody, foodProduct, waterProduct, freshAnimalProduct, healthProduct, retail, lsPackFood, lsBulkFood, " +
					"cookedFood, noCookedFood, lsDairyProduct, lsHanBaby, lsNoBody, lsFoodProduct, lsWaterProduct, lsFreshAnimalProduct, lsHealthProduct, scene, " +
					"amend,fddelegate,fdphone ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {criculate.getQyname(),criculate.getAddress(),criculate.getScaddress(),criculate.getEms(),criculate.getQydelegate(),
					criculate.getQyphone(),criculate.getJjtype(),criculate.getEmail(),criculate.getGsorganization(),criculate.getZzcode(),
					criculate.getCldate(),criculate.getNzyield(),criculate.getJyArea(),criculate.getPropertyOwner(),criculate.getFangWuDate(),
					criculate.getFangWuWay(),criculate.getDepartment(),criculate.getSpdelegate(),criculate.getJiandurenyuan(),criculate.getXieguanrenyuan(),
					criculate.getScpermit(),criculate.getFazhengjiguan(),criculate.getFazhengriqi(),criculate.getYouxiaodate(),criculate.getLongitude(),
					criculate.getLatitude(),criculate.getFoodMarket(),criculate.getSuperMarket(),criculate.getCvs(),criculate.getStore(),
					criculate.getFoodTrade(),criculate.getFoodLogistics(),criculate.getNonStoreFoodBusiness(),criculate.getOnlineShop(),criculate.getMailOrder(),
					criculate.getTelevisedShopping(),criculate.getAutomat(),criculate.getPiFa(),criculate.getPackFood(),criculate.getBulkFood(),
					criculate.getDairyProduct(),criculate.getHanBaby(),criculate.getNoBody(),criculate.getFoodProduct(),criculate.getWaterProduct(),
					criculate.getFreshAnimalProduct(),criculate.getHealthProduct(),criculate.getRetail(),criculate.getLsPackFood(),criculate.getLsBulkFood(),
					criculate.getCookedFood(),criculate.getNoCookedFood(),criculate.getLsDairyProduct(),criculate.getLsHanBaby(),criculate.getLsNoBody(),
					criculate.getLsFoodProduct(),criculate.getLsWaterProduct(),criculate.getLsFreshAnimalProduct(),criculate.getLsHealthProduct(),criculate.getScene(),
					criculate.getAmend(),criculate.getFddelegate(),criculate.getFdphone()
			};
			qr.update(sql, params);
	}
	
	//查询流通单位详细信息
	public Criculate criculateFind(int id) throws SQLException{
			String sql = "select * from criculate where id=?";
			return qr.query(sql, new BeanHandler<Criculate>(Criculate.class),id);
	}
	
	//更改流通单位信息
	public int criculateUpdate(int id, Criculate criculate) throws SQLException{
		String sql = "update criculate set qyname=?, address=?, scaddress=?, ems=?, qydelegate=?, qyphone=?, jjtype=?, email=?, gsorganization=?, zzcode=?, " +
					"cldate=?, nzyield=?, jyArea=?, propertyOwner=?, fangWuDate=?, fangWuWay=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, foodMarket=?, superMarket=?, cvs=?, store=?, " +
					"foodTrade=?, foodLogistics=?, nonStoreFoodBusiness=?, onlineShop=?, mailOrder=?, televisedShopping=?, automat=?, piFa=?, packFood=?, bulkFood=?, " +
					"dairyProduct=?, hanBaby=?, noBody=?, foodProduct=?, waterProduct=?, freshAnimalProduct=?, healthProduct=?, retail=?, lsPackFood=?, lsBulkFood=?, " +
					"cookedFood=?, noCookedFood=?, lsDairyProduct=?, lsHanBaby=?, lsNoBody=?, lsFoodProduct=?, lsWaterProduct=?, lsFreshAnimalProduct=?, lsHealthProduct=?, scene=?, " +
					"amend=?,fddelegate=?,fdphone=? where id=?";
		Object[] params = {criculate.getQyname(),criculate.getAddress(),criculate.getScaddress(),criculate.getEms(),criculate.getQydelegate(),
				criculate.getQyphone(),criculate.getJjtype(),criculate.getEmail(),criculate.getGsorganization(),criculate.getZzcode(),
				criculate.getCldate(),criculate.getNzyield(),criculate.getJyArea(),criculate.getPropertyOwner(),criculate.getFangWuDate(),
				criculate.getFangWuWay(),criculate.getDepartment(),criculate.getSpdelegate(),criculate.getJiandurenyuan(),criculate.getXieguanrenyuan(),
				criculate.getScpermit(),criculate.getFazhengjiguan(),criculate.getFazhengriqi(),criculate.getYouxiaodate(),criculate.getLongitude(),
				criculate.getLatitude(),criculate.getFoodMarket(),criculate.getSuperMarket(),criculate.getCvs(),criculate.getStore(),
				criculate.getFoodTrade(),criculate.getFoodLogistics(),criculate.getNonStoreFoodBusiness(),criculate.getOnlineShop(),criculate.getMailOrder(),
				criculate.getTelevisedShopping(),criculate.getAutomat(),criculate.getPiFa(),criculate.getPackFood(),criculate.getBulkFood(),
				criculate.getDairyProduct(),criculate.getHanBaby(),criculate.getNoBody(),criculate.getFoodProduct(),criculate.getWaterProduct(),
				criculate.getFreshAnimalProduct(),criculate.getHealthProduct(),criculate.getRetail(),criculate.getLsPackFood(),criculate.getLsBulkFood(),
				criculate.getCookedFood(),criculate.getNoCookedFood(),criculate.getLsDairyProduct(),criculate.getLsHanBaby(),criculate.getLsNoBody(),
				criculate.getLsFoodProduct(),criculate.getLsWaterProduct(),criculate.getLsFreshAnimalProduct(),criculate.getLsHealthProduct(),criculate.getScene(),
				criculate.getAmend(),criculate.getFddelegate(),criculate.getFdphone(), id};
		return qr.update(sql,params);
}
	
	//删除流通单位信息
	public void delete(int id) throws SQLException{
			String sql = "delete from criculate where id=?";
			qr.update(sql,id);
	}
	
	//根据公司名称进行模糊查询
	public PageBean<Criculate> queryByName(String qyname, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		return findByCriteria(experList, pageCode);
	}
	
	//根据所属单位进行分页查询
	public PageBean<Criculate> queryPage(String department, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("department", "=", department));
		return findByCriteria(experList, pageCode);
	}
	
	//根据所属单位进行分页查询
	public PageBean<Criculate> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		experList.add(new Expression("department", "like","%" + department + "%"));
		experList.add(new Expression("address", "like","%" + address + "%"));
		experList.add(new Expression("fddelegate", "like","%" + fddelegate + "%"));
		experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
		return findByCriteria(experList, pageCode);
	}
	
	//查询流通单位所有公司名称
	public PageBean<Criculate> fingByCategory(int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		return findByCriteria(experList, pageCode);
	}
	
	//通用查询方法
	private PageBean<Criculate> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
		/*
		 * 1.得到pageSize
		 * 2.得到totalRecord
		 * 3.得到beanList
		 * 4.创建pageBean返回
		 */
		PageBean<Criculate> pb1 = new PageBean<Criculate>();
		int pageSize = pb1.getPageSize();
		/*
		 * 通过ecprList生产where子句
		 */
		StringBuilder whereSql = new StringBuilder(" where 1=1 ");
		List<Object> params = new ArrayList<Object>();
		for(Expression expr : exprList){
			whereSql.append(" and ").append(expr.getName()).append(" ")
			.append(expr.getOperator()).append(" ");
			if(!expr.getOperator().equals("is null")){
				whereSql.append("?");
				params.add(expr.getValue());
			}
		}
		
		//总记录数
		String sql = "select count(*) from criculate" + whereSql;
		Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
		int totalRecord = number.intValue();
		
		//当前页的记录
		sql = "select * from criculate" + whereSql + " order by id limit ?,?";
		params.add((pageCode - 1) * pageSize);
		params.add(pageSize);
		List<Criculate> datas = qr.query(sql, new BeanListHandler<Criculate>(Criculate.class), params.toArray());
		
		PageBean<Criculate> pb = new PageBean<Criculate>();
		pb.setDatas(datas);
		pb.setPageCode(pageCode);
		pb.setPageSize(pageSize);
		pb.setTotalRecord(totalRecord);
		return pb;
	}
}
