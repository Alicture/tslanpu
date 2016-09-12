package cn.tslanpu.test.add.drug.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.drug.domain.Drug;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class DrugDao {

	private QueryRunner qr = new TxQueryRunner();
	//插入数据
	public void add(Drug drug) throws SQLException {
		String sql = "insert into drug(qyname, address, scaddress, ems, phone, fax, email, jjtype, gsorganization, zzcode, " +
					"fddelegate,fdeduc,fdprofess,qydelegate,qyeduc,qyprofess,zldelegate,zleduc,zlprofess,zydelegate,zyeduc,zyprofess, " +
					"department, spdelegate, jiandurenyuan, xieguanrenyuan," +
					"scpermit, fazhengjiguan, fazhengriqi, youxiaodate,gsppermit,gspfazhengjiguan,gspfazhengriqi,gspyouxiaodate," +
					"longitude, latitude, jyrange,zhongarea,changarea, yinarea,lengarea, manage, amend) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {drug.getQyname(),drug.getAddress(),drug.getScaddress(),drug.getEms(),
				drug.getPhone(), drug.getFax(), drug.getEmail(), drug.getJjtype(), drug.getGsorganization(), drug.getZzcode(),
				drug.getFddelegate(),drug.getFdeduc(),drug.getFdprofess(),drug.getQydelegate(),drug.getQyeduc(),drug.getQyprofess(),drug.getZldelegate(),
				drug.getZleduc(),drug.getZlprofess(),drug.getZydelegate(),drug.getZyeduc(),drug.getZyprofess(),
				drug.getDepartment(),drug.getSpdelegate(),drug.getJiandurenyuan(),drug.getXieguanrenyuan(),
				drug.getScpermit(),drug.getFazhengjiguan(),drug.getFazhengriqi(),drug.getYouxiaodate(),
				drug.getGsppermit(),drug.getGspfazhengjiguan(),drug.getGspfazhengriqi(),drug.getGspyouxiaodate(),drug.getLongitude(),
				drug.getLatitude(),drug.getJyrange(),drug.getZhongarea(),drug.getChangarea(), drug.getYinarea(),drug.getLengarea(),drug.getManage(),
				drug.getAmend()
		};
		qr.update(sql, params);
		
	}
	//更新数据
	public void update(Drug drug) throws SQLException {
		String sql = "update drug set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?, jjtype=?, gsorganization=?, zzcode=?, " +
					"fddelegate=?,fdeduc=?,fdprofess=?,qydelegate=?,qyeduc=?,qyprofess=?,zldelegate=?,zleduc=?,zlprofess=?,zydelegate=?,zyeduc=?,zyprofess=?, " +
					"department=?, spdelegate=?, jiandurenyuan=?, xieguanrenyuan=?," +
					"scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?,gsppermit=?,gspfazhengjiguan=?,gspfazhengriqi=?,gspyouxiaodate=?," +
					"longitude=?, latitude=?, jyrange=?,zhongarea=?,changarea=?, yinarea=?,lengarea=?, manage=?, amend=? where id=?";
		Object[] params = {drug.getQyname(),drug.getAddress(),drug.getScaddress(),drug.getEms(),
				drug.getPhone(), drug.getFax(), drug.getEmail(), drug.getJjtype(), drug.getGsorganization(), drug.getZzcode(),
				drug.getFddelegate(),drug.getFdeduc(),drug.getFdprofess(),drug.getQydelegate(),drug.getQyeduc(),drug.getQyprofess(),drug.getZldelegate(),
				drug.getZleduc(),drug.getZlprofess(),drug.getZydelegate(),drug.getZyeduc(),drug.getZyprofess(),
				drug.getDepartment(),drug.getSpdelegate(),drug.getJiandurenyuan(),drug.getXieguanrenyuan(),
				drug.getScpermit(),drug.getFazhengjiguan(),drug.getFazhengriqi(),drug.getYouxiaodate(),
				drug.getGsppermit(),drug.getGspfazhengjiguan(),drug.getGspfazhengriqi(),drug.getGspyouxiaodate(),drug.getLongitude(),
				drug.getLatitude(),drug.getJyrange(),drug.getZhongarea(),drug.getChangarea(), drug.getYinarea(),drug.getLengarea(),drug.getManage(),
				drug.getAmend(),drug.getId()
		};
		qr.update(sql, params);
		
	}
	
	//根据所属单位进行分页查询
		public PageBean<Drug> queryZ(String qyname, String address, String department, String fddelegate, String zzcode, int pageCode) throws SQLException{
			List<Expression> experList = new ArrayList<Expression>();
			experList.add(new Expression("qyname", "like","%" + qyname + "%"));
			experList.add(new Expression("department", "like","%" + department + "%"));
			experList.add(new Expression("address", "like","%" + address + "%"));
			experList.add(new Expression("fddelegate", "like","%" + fddelegate + "%"));
			experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
			return findByCriteria(experList, pageCode);
		}
	//查询详细信息
	public Drug drugFind(int id) throws SQLException {
		String sql = "select * from drug where id=?";
		return qr.query(sql, new BeanHandler<Drug>(Drug.class),id);
	}
	//通用查询方法
		private PageBean<Drug> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
			/*
			 * 1.得到pageSize
			 * 2.得到totalRecord
			 * 3.得到beanList
			 * 4.创建pageBean返回
			 */
			PageBean<Drug> pb1 = new PageBean<Drug>();
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
			String sql = "select count(*) from drug" + whereSql;
			Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
			int totalRecord = number.intValue();
			
			//当前页的记录
			sql = "select * from drug" + whereSql + " order by id limit ?,?";
			params.add((pageCode - 1) * pageSize);
			params.add(pageSize);
			List<Drug> datas = qr.query(sql, new BeanListHandler<Drug>(Drug.class), params.toArray());
			
			PageBean<Drug> pb = new PageBean<Drug>();
			pb.setDatas(datas);
			pb.setPageCode(pageCode);
			pb.setPageSize(pageSize);
			pb.setTotalRecord(totalRecord);
			return pb;
		}
		//数据删除
		public void delete(int parseInt) throws SQLException {
			String sql = "delete from drug where id=?";
				qr.update(sql, parseInt);

		}

}
