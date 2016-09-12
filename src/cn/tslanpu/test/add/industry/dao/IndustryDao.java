package cn.tslanpu.test.add.industry.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class IndustryDao {
	
			private QueryRunner qr = new TxQueryRunner();
			
			//增加信息
		public void add(Industry industry) throws SQLException{
			String sql = "insert into industry(qyname, address, scaddress, ems, phone, fax, email, jjtype, gsorganization, zzcode, " +
					"fddelegate, fdphone, qydelegate, qyphone, department, spdelegate, jiandurenyuan, xieguanrenyuan, cyNum, healthNum, " +
					"area, scJyAddressXingZhi, jyTime, addressArea, processArea, market, zuoWeiNum, shiFoSongCan, shiDuanXingZhi, studentNum," +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, everyOne, amend )  " +
					"values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			Object[] params = {industry.getQyname(),industry.getAddress(),industry.getScaddress(),industry.getEms(),industry.getPhone(),
					industry.getFax(),industry.getEmail(),industry.getJjtype(),industry.getGsorganization(),industry.getZzcode(),
					industry.getFddelegate(),industry.getFdphone(),industry.getQydelegate(),industry.getQyphone(),industry.getDepartment(),
					industry.getSpdelegate(),industry.getJiandurenyuan(),industry.getXieguanrenyuan(),industry.getCyNum(),industry.getHealthNum(),
					industry.getArea(),industry.getScJyAddressXingZhi(),industry.getJyTime(),industry.getAddressArea(),industry.getProcessArea(),
					industry.getMarket(),industry.getZuoWeiNum(),industry.getShiFoSongCan(),industry.getShiDuanXingZhi(),industry.getStudentNum(),
					industry.getScpermit(),industry.getFazhengjiguan(),industry.getFazhengriqi(),industry.getYouxiaodate(),industry.getLongitude(),
					industry.getLatitude(),industry.getEveryOne(),industry.getAmend() };
			qr.update(sql, params);
		}
		
		//更新信息
		public void industryUpdate(int id, Industry industry) throws SQLException{
			String sql = "update industry set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?, jjtype=?, gsorganization=?, zzcode=?, " +
					"fddelegate=?, fdphone=?, qydelegate=?, qyphone=?, department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?, cyNum=?, healthNum=?, " +
					"area=?, scJyAddressXingZhi=?, jyTime=?, addressArea=?, processArea=?, market=?, zuoWeiNum=?, shiFoSongCan=?, shiDuanXingZhi=?, studentNum=?," +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, everyOne=?, amend=? where id=?";
			Object[] params = {industry.getQyname(),industry.getAddress(),industry.getScaddress(),industry.getEms(),industry.getPhone(),
					industry.getFax(),industry.getEmail(),industry.getJjtype(),industry.getGsorganization(),industry.getZzcode(),
					industry.getFddelegate(),industry.getFdphone(),industry.getQydelegate(),industry.getQyphone(),industry.getDepartment(),
					industry.getSpdelegate(),industry.getJiandurenyuan(),industry.getXieguanrenyuan(),industry.getCyNum(),industry.getHealthNum(),
					industry.getArea(),industry.getScJyAddressXingZhi(),industry.getJyTime(),industry.getAddressArea(),industry.getProcessArea(),
					industry.getMarket(),industry.getZuoWeiNum(),industry.getShiFoSongCan(),industry.getShiDuanXingZhi(),industry.getStudentNum(),
					industry.getScpermit(),industry.getFazhengjiguan(),industry.getFazhengriqi(),industry.getYouxiaodate(),industry.getLongitude(),
					industry.getLatitude(),industry.getEveryOne(),industry.getAmend(), id };
			qr.update(sql, params);
		}
		//查询详细信息
		public Industry industryFind(int id) throws SQLException{
				String sql = "select * from industry where id=?";
				return qr.query(sql, new BeanHandler<Industry>(Industry.class),id);
		}
		
		//删除
		public void industryDelete(int id) throws Exception {
			String sql = "delete from industry where id=?";
			qr.update(sql,id);
		}
		
		//根据所属单位进行分页查询
		public PageBean<Industry> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
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
		private PageBean<Industry> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
			/*
			 * 1.得到pageSize
			 * 2.得到totalRecord
			 * 3.得到beanList
			 * 4.创建pageBean返回
			 */
			PageBean<Industry> pb1 = new PageBean<Industry>();
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
			String sql = "select count(*) from industry" + whereSql;
			Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
			int totalRecord = number.intValue();
			
			//当前页的记录
			sql = "select * from industry" + whereSql + " order by id limit ?,?";
			params.add((pageCode - 1) * pageSize);
			params.add(pageSize);
			List<Industry> datas = qr.query(sql, new BeanListHandler<Industry>(Industry.class), params.toArray());
			
			PageBean<Industry> pb = new PageBean<Industry>();
			pb.setDatas(datas);
			pb.setPageCode(pageCode);
			pb.setPageSize(pageSize);
			pb.setTotalRecord(totalRecord);
			return pb;
		}
}
