package cn.tslanpu.test.add.wine.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.wine.domain.Wine;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class WineDao {
	private QueryRunner qr = new TxQueryRunner();
	//增加信息
	public void add(Wine wine) throws SQLException{
			String sql = "insert into wine(qyname, address, scaddress, ems, qydelegate, qyphone, zzcode, " +
					"cldate, department, spdelegate, jiandurenyuan, xieguanrenyuan, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, jytype, jyrange," +
					"amend ,lerepre,lephone) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {wine.getQyname(),wine.getAddress(),wine.getScaddress(),wine.getEms(),wine.getQydelegate(),
					wine.getQyphone(),wine.getZzcode(),
					wine.getCldate()
					,wine.getDepartment(),wine.getSpdelegate(),wine.getJiandurenyuan(),wine.getXieguanrenyuan(),
					wine.getScpermit(),wine.getFazhengjiguan(),wine.getFazhengriqi(),wine.getYouxiaodate(),wine.getLongitude(),
					wine.getLatitude(),wine.getJytype(),wine.getJyrange(),
					wine.getAmend(),wine.getLerepre(),wine.getLephone()
			};
			qr.update(sql, params);
	}
	
	//数据删除
			public void delete(int parseInt) throws SQLException {
				String sql = "delete from wine where id=?";
					qr.update(sql, parseInt);

			}
	//查询详细信息
	public Wine wineFind(int id) throws SQLException{
			String sql = "select * from wine where id=?";
			return qr.query(sql, new BeanHandler<Wine>(Wine.class),id);
	}
	
	//根据所属单位进行分页查询
	public PageBean<Wine> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		experList.add(new Expression("department", "like","%" + department + "%"));
		experList.add(new Expression("address", "like","%" + address + "%"));
		experList.add(new Expression("lerepre", "like","%" + fddelegate + "%"));
		experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
		return findByCriteria(experList, pageCode);
	}
	
	//通用查询方法
	private PageBean<Wine> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
		/*
		 * 1.得到pageSize
		 * 2.得到totalRecord
		 * 3.得到beanList
		 * 4.创建pageBean返回
		 */
		PageBean<Wine> pb1 = new PageBean<Wine>();
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
		String sql = "select count(*) from wine" + whereSql;
		Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
		int totalRecord = number.intValue();
		
		//当前页的记录
		sql = "select * from wine" + whereSql + " order by id limit ?,?";
		params.add((pageCode - 1) * pageSize);
		params.add(pageSize);
		List<Wine> datas = qr.query(sql, new BeanListHandler<Wine>(Wine.class), params.toArray());
		
		PageBean<Wine> pb = new PageBean<Wine>();
		pb.setDatas(datas);
		pb.setPageCode(pageCode);
		pb.setPageSize(pageSize);
		pb.setTotalRecord(totalRecord);
		return pb;
	}

	public void update(Wine wine) throws SQLException {
		String sql = "update wine set qyname=?, address=?, scaddress=?, ems=?, qydelegate=?, qyphone=?, zzcode=?, " +
					"cldate=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, jytype=?, jyrange=?," +
					"amend =?,lerepre=?,lephone=? where id=?";
	Object[] params = {wine.getQyname(),wine.getAddress(),wine.getScaddress(),wine.getEms(),wine.getQydelegate(),
			wine.getQyphone(),wine.getZzcode(),
			wine.getCldate(),wine.getDepartment(),wine.getSpdelegate(),wine.getJiandurenyuan(),wine.getXieguanrenyuan(),
			wine.getScpermit(),wine.getFazhengjiguan(),wine.getFazhengriqi(),wine.getYouxiaodate(),wine.getLongitude(),
			wine.getLatitude(),wine.getJytype(),wine.getJyrange(),
			wine.getAmend(),wine.getLerepre(),wine.getLephone(),wine.getId()
	};
	qr.update(sql, params);
	}
	
}
