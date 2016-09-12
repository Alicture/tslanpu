package cn.tslanpu.test.add.health.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.health.domain.Health;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class HealthDao {
	
		private QueryRunner qr = new TxQueryRunner();
			
			//增加信息
		public void add(Health health) throws SQLException{
			String sql = "insert into health(qyname, address, scaddress, ems, phone, fax, email, jjtype, gsorganization, zzcode, " +
					"fddelegate, fdphone, qydelegate, qyphone, department, spdelegate, jiandurenyuan, xieguanrenyuan, jyArea, jyNum, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, jyType, healthFood, cosmetic, cyNum, " +
					"graduateNum, juniorNum, manage, amend ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			Object[] params = {health.getQyname(),health.getAddress(),health.getScaddress(),health.getEms(),health.getPhone(),
					health.getFax(),health.getEmail(),health.getJjtype(),health.getGsorganization(),health.getZzcode(),
					health.getFddelegate(),health.getFdphone(),health.getQydelegate(),health.getQyphone(),health.getDepartment(),
					health.getSpdelegate(),health.getJiandurenyuan(),health.getXieguanrenyuan(),health.getJyArea(),health.getJyNum(),
					health.getScpermit(),health.getFazhengjiguan(),health.getFazhengriqi(),health.getYouxiaodate(),health.getLongitude(),
					health.getLatitude(),health.getJyType(),health.getHealthFood(),health.getCosmetic(),health.getCyNum(),
					health.getGraduateNum(),health.getJuniorNum(),health.getManage(),health.getAmend() };
			qr.update(sql, params);
		}
		
		//更新信息
		public void healthUpdate(int id, Health health) throws SQLException{
			String sql = "update health set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?, jjtype=?, gsorganization=?, zzcode=?, " +
					"fddelegate=?, fdphone=?, qydelegate=?, qyphone=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, jyArea=?, jyNum=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, jyType=?, healthFood=?, cosmetic=?, cyNum=?, " +
					"graduateNum=?, juniorNum=?, manage=?, amend=? where id=?";
			Object[] params = {health.getQyname(),health.getAddress(),health.getScaddress(),health.getEms(),health.getPhone(),
					health.getFax(),health.getEmail(),health.getJjtype(),health.getGsorganization(),health.getZzcode(),
					health.getFddelegate(),health.getFdphone(),health.getQydelegate(),health.getQyphone(),health.getDepartment(),
					health.getSpdelegate(),health.getJiandurenyuan(),health.getXieguanrenyuan(),health.getJyArea(),health.getJyNum(),
					health.getScpermit(),health.getFazhengjiguan(),health.getFazhengriqi(),health.getYouxiaodate(),health.getLongitude(),
					health.getLatitude(),health.getJyType(),health.getHealthFood(),health.getCosmetic(),health.getCyNum(),
					health.getGraduateNum(),health.getJuniorNum(),health.getManage(),health.getAmend(), id };
			qr.update(sql, params);
	}
		//查询详细信息
		public Health healthFind(int id) throws SQLException{
				String sql = "select * from health where id=?";
				return qr.query(sql, new BeanHandler<Health>(Health.class),id);
		}
		
		//删除
		public void healthDelete(int id) throws Exception {
			String sql = "delete from health where id=?";
			qr.update(sql,id);
		}
		
		//根据所属单位进行分页查询
		public PageBean<Health> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
			List<Expression> experList = new ArrayList<Expression>();
			experList.add(new Expression("qyname", "like","%" + qyname + "%"));
			experList.add(new Expression("department", "like","%" + department + "%"));
			experList.add(new Expression("address", "like","%" + address + "%"));
			experList.add(new Expression("department", "like","%" + department + "%"));
			experList.add(new Expression("fddelegate", "like","%" + fddelegate + "%"));
			experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
			return findByCriteria(experList, pageCode);
		}
		
		//通用查询方法
		private PageBean<Health> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
			/*
			 * 1.得到pageSize
			 * 2.得到totalRecord
			 * 3.得到beanList
			 * 4.创建pageBean返回
			 */
			PageBean<Health> pb1 = new PageBean<Health>();
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
			String sql = "select count(*) from health" + whereSql;
			Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
			int totalRecord = number.intValue();
			
			//当前页的记录
			sql = "select * from health" + whereSql + " order by id limit ?,?";
			params.add((pageCode - 1) * pageSize);
			params.add(pageSize);
			List<Health> datas = qr.query(sql, new BeanListHandler<Health>(Health.class), params.toArray());
			
			PageBean<Health> pb = new PageBean<Health>();
			pb.setDatas(datas);
			pb.setPageCode(pageCode);
			pb.setPageSize(pageSize);
			pb.setTotalRecord(totalRecord);
			return pb;
		}
		
}
