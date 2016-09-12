package cn.tslanpu.test.add.cosmetic.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.cosmetic.domain.Cosmetic;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class CosmeticDao {
	
		private QueryRunner qr = new TxQueryRunner();
			
			//增加信息
		public void add(Cosmetic cosmetic) throws SQLException{
			String sql = "insert into cosmetic(qyname, address, scaddress, ems, phone, fax, email, jjtype, gsorganization, zzcode, " +
					"fddelegate, fdphone, qydelegate, qyphone, department, spdelegate, jiandurenyuan, xieguanrenyuan, jyArea, jyNum, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, jyType, healthFood, cosmetic, cyNum, " +
					"graduateNum, juniorNum, manage, amend ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			Object[] params = {cosmetic.getQyname(),cosmetic.getAddress(),cosmetic.getScaddress(),cosmetic.getEms(),cosmetic.getPhone(),
					cosmetic.getFax(),cosmetic.getEmail(),cosmetic.getJjtype(),cosmetic.getGsorganization(),cosmetic.getZzcode(),
					cosmetic.getFddelegate(),cosmetic.getFdphone(),cosmetic.getQydelegate(),cosmetic.getQyphone(),cosmetic.getDepartment(),
					cosmetic.getSpdelegate(),cosmetic.getJiandurenyuan(),cosmetic.getXieguanrenyuan(),cosmetic.getJyArea(),cosmetic.getJyNum(),
					cosmetic.getScpermit(),cosmetic.getFazhengjiguan(),cosmetic.getFazhengriqi(),cosmetic.getYouxiaodate(),cosmetic.getLongitude(),
					cosmetic.getLatitude(),cosmetic.getJyType(),cosmetic.getHealthFood(),cosmetic.getCosmetic(),cosmetic.getCyNum(),
					cosmetic.getGraduateNum(),cosmetic.getJuniorNum(),cosmetic.getManage(),cosmetic.getAmend() };
			qr.update(sql, params);
		}
		
		//更新信息
		public void cosmeticUpdate(int id, Cosmetic cosmetic) throws SQLException{
			String sql = "update cosmetic set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?, jjtype=?, gsorganization=?, zzcode=?, " +
					"fddelegate=?, fdphone=?, qydelegate=?, qyphone=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, jyArea=?, jyNum=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, jyType=?, healthFood=?, cosmetic=?, cyNum=?, " +
					"graduateNum=?, juniorNum=?, manage=?, amend=? where id=?";
			Object[] params = {cosmetic.getQyname(),cosmetic.getAddress(),cosmetic.getScaddress(),cosmetic.getEms(),cosmetic.getPhone(),
					cosmetic.getFax(),cosmetic.getEmail(),cosmetic.getJjtype(),cosmetic.getGsorganization(),cosmetic.getZzcode(),
					cosmetic.getFddelegate(),cosmetic.getFdphone(),cosmetic.getQydelegate(),cosmetic.getQyphone(),cosmetic.getDepartment(),
					cosmetic.getSpdelegate(),cosmetic.getJiandurenyuan(),cosmetic.getXieguanrenyuan(),cosmetic.getJyArea(),cosmetic.getJyNum(),
					cosmetic.getScpermit(),cosmetic.getFazhengjiguan(),cosmetic.getFazhengriqi(),cosmetic.getYouxiaodate(),cosmetic.getLongitude(),
					cosmetic.getLatitude(),cosmetic.getJyType(),cosmetic.getHealthFood(),cosmetic.getCosmetic(),cosmetic.getCyNum(),
					cosmetic.getGraduateNum(),cosmetic.getJuniorNum(),cosmetic.getManage(),cosmetic.getAmend(), id };
			qr.update(sql, params);
	}
		//查询详细信息
		public Cosmetic cosmeticFind(int id) throws SQLException{
				String sql = "select * from cosmetic where id=?";
				return qr.query(sql, new BeanHandler<Cosmetic>(Cosmetic.class),id);
		}
		
		//删除
		public void cosmeticDelete(int id) throws Exception {
			String sql = "delete from cosmetic where id=?";
			qr.update(sql,id);
		}
		
		//根据所属单位进行分页查询
		public PageBean<Cosmetic> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
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
		private PageBean<Cosmetic> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
			/*
			 * 1.得到pageSize
			 * 2.得到totalRecord
			 * 3.得到beanList
			 * 4.创建pageBean返回
			 */
			PageBean<Cosmetic> pb1 = new PageBean<Cosmetic>();
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
			String sql = "select count(*) from cosmetic" + whereSql;
			Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
			int totalRecord = number.intValue();
			
			//当前页的记录
			sql = "select * from cosmetic" + whereSql + " order by id limit ?,?";
			params.add((pageCode - 1) * pageSize);
			params.add(pageSize);
			List<Cosmetic> datas = qr.query(sql, new BeanListHandler<Cosmetic>(Cosmetic.class), params.toArray());
			
			PageBean<Cosmetic> pb = new PageBean<Cosmetic>();
			pb.setDatas(datas);
			pb.setPageCode(pageCode);
			pb.setPageSize(pageSize);
			pb.setTotalRecord(totalRecord);
			return pb;
		}
		
}
