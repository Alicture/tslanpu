package cn.tslanpu.test.add.food.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.food.domain.Food;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;


public class FoodDao {
	private QueryRunner qr = new TxQueryRunner();
	public void add(Food food) throws SQLException{
			String sql = "insert into food(qyname, address, scaddress, ems, qydelegate, qyphone, jjtype,email, gsorganization, zzcode, " +
					"cldate, nzyield, cyNum, Seats, jyArea, healthNum, department, spdelegate, jiandurenyuan,xieguanrenyuan, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate,longitude, latitude,type,remark,amend,fddelegate,fdphone) " +
					"values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {food.getQyname(),food.getAddress(),food.getScaddress(),food.getEms(),food.getQydelegate(),
						food.getQyphone(),food.getJjtype(),food.getEmail(),food.getGsorganization(),food.getZzcode(),
						food.getCldate(),food.getNzyield(),food.getCyNum(),food.getSeats(),food.getJyArea(),
						food.getHealthNum(),food.getDepartment(),food.getSpdelegate(),food.getJiandurenyuan(),food.getXieguanrenyuan(),
						food.getScpermit(),food.getFazhengjiguan(),food.getFazhengriqi(),food.getYouxiaodate(),food.getLongitude(),
						food.getLatitude(),food.getType(),food.getRemark(),food.getAmend(),food.getFddelegate(),food.getFdphone() };
			qr.update(sql, params);
	}
	
	//查询餐饮企业公司详细信息
	public Food foodFind(int id) throws SQLException{
			String sql = "select * from food where id=?";
			return qr.query(sql, new BeanHandler<Food>(Food.class), id);
	}
	//更改餐饮企业单位信息
	public void foodUpdate(int id, Food food) throws SQLException{
			String sql = "update food set qyname=?, address=?, scaddress=?, ems=?, qydelegate=?, qyphone=?, jjtype=?,email=?, gsorganization=?, zzcode=?, " +
					"cldate=?, nzyield=?, cyNum=?, seats=?, jyArea=?, healthNum=?, department=?, spdelegate=?, jiandurenyuan=?,xieguanrenyuan=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?,longitude=?, latitude=?,type=?,remark=?,amend=?,fddelegate=?," +
					"fdphone=? where id=?";
			Object[] params = {food.getQyname(),food.getAddress(),food.getScaddress(),food.getEms(),food.getQydelegate(),
					food.getQyphone(),food.getJjtype(),food.getEmail(),food.getGsorganization(),food.getZzcode(),
					food.getCldate(),food.getNzyield(),food.getCyNum(),food.getSeats(),food.getJyArea(),
					food.getHealthNum(),food.getDepartment(),food.getSpdelegate(),food.getJiandurenyuan(),food.getXieguanrenyuan(),
					food.getScpermit(),food.getFazhengjiguan(),food.getFazhengriqi(),food.getYouxiaodate(),food.getLongitude(),
					food.getLatitude(),food.getType(),food.getRemark(),food.getAmend(),food.getFddelegate(),food.getFdphone(), id }; 
			qr.update(sql, params);
	}
	//删除餐饮企业单位信息
	public void delete(int id) throws SQLException{
			String sql = "delete from food where id=?";
			qr.update(sql, id);
	}
	//根据公司名称进行模糊查询
	public PageBean<Food> queryByName(String qyname, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		return findByCriteria(experList, pageCode);
	}
	
	//根据所属单位进行分页查询
	public PageBean<Food> queryPage(String department, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("department", "=", department));
		return findByCriteria(experList, pageCode);
	}
	
	//查询流通单位所有公司名称
	public PageBean<Food> fingByCategory(int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		return findByCriteria(experList, pageCode);
	}
	
	//通用查询方法
	private PageBean<Food> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
		/*
		 * 1.得到pageSize
		 * 2.得到totalRecord
		 * 3.得到beanList
		 * 4.创建pageBean返回
		 */
		PageBean<Food> pb1 = new PageBean<Food>();
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
		String sql = "select count(*) from food" + whereSql;
		Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
		int totalRecord = number.intValue();
		
		//当前页的记录
		sql = "select * from food" + whereSql + " order by id limit ?,?";
		params.add((pageCode - 1) * pageSize);
		params.add(pageSize);
		List<Food> datas = qr.query(sql, new BeanListHandler<Food>(Food.class), params.toArray());
		
		PageBean<Food> pb = new PageBean<Food>();
		pb.setDatas(datas);
		pb.setPageCode(pageCode);
		pb.setPageSize(pageSize);
		pb.setTotalRecord(totalRecord);
		return pb;
	}

	public PageBean<Food> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) throws SQLException {
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		experList.add(new Expression("address", "like","%" + address + "%"));
		experList.add(new Expression("department", "like","%" + department + "%"));
		experList.add(new Expression("fddelegate", "like","%" + fddelegate + "%"));
		experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
		return findByCriteria(experList, pageCode);
	}
}
