package cn.tslanpu.test.add.medical.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.medical.domain.Medical;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class MedicalDao {
		private QueryRunner qr = new TxQueryRunner();
	
	//增加信息
		public void add(Medical medical) throws SQLException{
			String sql = "insert into medical(qyname, address, scaddress, ems, phone, fax, email, jjtype, gsorganization, zzcode, " +
					"fddelegate, fdphone, qydelegate, qyphone, department, spdelegate, jiandurenyuan, xieguanrenyuan, jyArea, useCategory, " +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, market, useEnterprise, name, manufacturer, " +
					"guiGe, priductCode, supplier,time, amend ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			Object[] params = {medical.getQyname(),medical.getAddress(),medical.getScaddress(),medical.getEms(),medical.getPhone(),
					medical.getFax(),medical.getEmail(),medical.getJjtype(),medical.getGsorganization(),medical.getZzcode(),
					medical.getFddelegate(),medical.getFdphone(),medical.getQydelegate(),medical.getQyphone(),medical.getDepartment(),
					medical.getSpdelegate(),medical.getJiandurenyuan(),medical.getXieguanrenyuan(),medical.getJyArea(),medical.getUseCategory(),
					medical.getScpermit(),medical.getFazhengjiguan(),medical.getFazhengriqi(),medical.getYouxiaodate(),medical.getLongitude(),
					medical.getLatitude(),medical.getMarket(),medical.getUseEnterprise(),medical.getName(),medical.getManufacturer(),
					medical.getGuiGe(),medical.getPriductCode(),medical.getSupplier(),medical.getTime(),medical.getAmend() };
			qr.update(sql, params);
		}
		
		//更新信息
		public void medicalUpdate(int id, Medical medical) throws SQLException{
			String sql = "update medical set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?, jjtype=?, gsorganization=?, zzcode=?, " +
					"fddelegate=?, fdphone=?, qydelegate=?, qyphone=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, jyArea=?, useCategory=?, " +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, market=?, useEnterprise=?, name=?, manufacturer=?, " +
					"guiGe=?, priductCode=?, supplier=?,time=?, amend=? where id=?";
			Object[] params = {medical.getQyname(),medical.getAddress(),medical.getScaddress(),medical.getEms(),medical.getPhone(),
				medical.getFax(),medical.getEmail(),medical.getJjtype(),medical.getGsorganization(),medical.getZzcode(),
				medical.getFddelegate(),medical.getFdphone(),medical.getQydelegate(),medical.getQyphone(),medical.getDepartment(),
				medical.getSpdelegate(),medical.getJiandurenyuan(),medical.getXieguanrenyuan(),medical.getJyArea(),medical.getUseCategory(),
				medical.getScpermit(),medical.getFazhengjiguan(),medical.getFazhengriqi(),medical.getYouxiaodate(),medical.getLongitude(),
				medical.getLatitude(),medical.getMarket(),medical.getUseEnterprise(),medical.getName(),medical.getManufacturer(),
				medical.getGuiGe(),medical.getPriductCode(),medical.getSupplier(),medical.getTime(),medical.getAmend(), id };
			qr.update(sql, params);
		}
		//查询详细信息
		public Medical medicalFind(int id) throws SQLException{
				String sql = "select * from medical where id=?";
				return qr.query(sql, new BeanHandler<Medical>(Medical.class),id);
		}
		
		//删除
		public void medicalDelete(int id) throws Exception {
			String sql = "delete from medical where id=?";
			qr.update(sql,id);
		}
		
		//根据所属单位进行分页查询
		public PageBean<Medical> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
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
		private PageBean<Medical> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
			/*
			 * 1.得到pageSize
			 * 2.得到totalRecord
			 * 3.得到beanList
			 * 4.创建pageBean返回
			 */
			PageBean<Medical> pb1 = new PageBean<Medical>();
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
			String sql = "select count(*) from medical" + whereSql;
			Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
			int totalRecord = number.intValue();
			
			//当前页的记录
			sql = "select * from medical" + whereSql + " order by id limit ?,?";
			params.add((pageCode - 1) * pageSize);
			params.add(pageSize);
			List<Medical> datas = qr.query(sql, new BeanListHandler<Medical>(Medical.class), params.toArray());
			
			PageBean<Medical> pb = new PageBean<Medical>();
			pb.setDatas(datas);
			pb.setPageCode(pageCode);
			pb.setPageSize(pageSize);
			pb.setTotalRecord(totalRecord);
			return pb;
		}
}
