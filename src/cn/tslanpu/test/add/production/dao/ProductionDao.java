package cn.tslanpu.test.add.production.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.add.production.domain.Production;
import cn.tslanpu.test.pager.Expression;
import cn.tslanpu.test.pager.PageBean;

public class ProductionDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public void add(Production production) throws SQLException{
		String sql = "insert into production(qyname, address, scaddress, ems, phone, fax, email,jjtype,gsorganization,zzcode," +
				"cldate,nzyield,fddelegate,fdphone,qydelegate,qyphone,cynumber,assay,department, spdelegate, " +
				"jiandurenyuan,xieguanrenyuan, scpermit, fazhengjiguan, fazhengriqi, youxiaodate, longitude, latitude, isoapprove, hacccpapprove, " +
			    "wghapprove, lsapprove, yjapprove, capprove, chanpinName, zxbzName, zxbzCode, beian, cpName, guiGe," +
			    "nianChanLiang,additive,additiveComposition,addFoodName,maxAmount,amount,handlers,chanPinLeiBie,wtChanPinName,wtQyName," +
			    "wtScAddress,wtLinkman,wtTel,bwtQyName,bwtScAddress,bwtLinkName,bwtTel,htSxDate, wtHtDate,amend) " +
			    "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { production.getQyname(),production.getAddress(),production.getScaddress(),production.getEms(),production.getPhone(),
		 production.getFax(), production.getEmail(),production.getJjtype(),production.getGsorganization(),production.getZzcode(),
	     production.getCldate(), production.getNzyield(),production.getFddelegate(),production.getFdphone(),production.getQydelegate(),
	     production.getQyphone(),production.getCynumber(),production.getAssay(),production.getDepartment(),production.getSpdelegate(),
	     production.getJiandurenyuan(),production.getXieguanrenyuan(),production.getScpermit(),production.getFazhengjiguan(),production.getFazhengriqi(),
	     production.getYouxiaodate(),production.getLongitude(),production.getLatitude(),production.getIsoapprove(),production.getHacccpapprove(),
	     production.getWghapprove(),production.getLsapprove(),production.getYjapprove(),production.getCapprove(),production.getChanpinName(),
	     production.getZxbzName(),production.getZxbzCode(),production.getBeian(),production.getCpName(),production.getGuiGe(),
	     production.getNianChanLiang(),production.getAdditive(),production.getAdditiveComposition(),production.getAddFoodName(),production.getMaxAmount(),
	     production.getAmount(),production.getHandlers(),production.getChanPinLeiBie(),production.getWtChanPinName(),production.getWtQyName(),
	     production.getWtScAddress(),production.getWtLinkman(),production.getWtTel(),production.getBwtQyName(),production.getBwtScAddress(),
	     production.getBwtLinkName(),production.getBwtTel(),production.getHtSxDate(),production.getWtHtDate(),production.getAmend()
		};
		qr.update(sql,params);
	}
	//查询公司详细信息
	public Production productionFind(int id) throws SQLException{
			String sql = "select * from production where id=?";
			return qr.query(sql, new BeanHandler<Production>(Production.class),id);
	}
	
	//更改生产企业单位信息
	public void productionUpdate(int id, Production production) throws SQLException{
			String sql = "update production set qyname=?, address=?, scaddress=?, ems=?, phone=?, fax=?, email=?,jjtype=?,gsorganization=?,zzcode=?," +
				"cldate=?,nzyield=?,fddelegate=?,fdphone=?,qydelegate=?,qyphone=?,cynumber=?,assay=?,department=?, spdelegate=?, " +
				"jiandurenyuan=?,xieguanrenyuan=?, scpermit=?, fazhengjiguan=?, fazhengriqi=?, youxiaodate=?, longitude=?, latitude=?, isoapprove=?, hacccpapprove=?, " +
			    "wghapprove=?, lsapprove=?, yjapprove=?, capprove=?, chanpinName=?, zxbzName=?, zxbzCode=?, beian=?, cpName=?, guiGe=?," +
			    "nianChanLiang=?,additive=?,additiveComposition=?,addFoodName=?,maxAmount=?,amount=?,handlers=?,chanPinLeiBie=?,wtChanPinName=?,wtQyName=?," +
			    "wtScAddress=?,wtLinkman=?,wtTel=?,bwtQyName=?,bwtScAddress=?,bwtLinkName=?,bwtTel=?,htSxDate=?, wtHtDate=?,amend=? where id=?";
			Object[] params = { production.getQyname(),production.getAddress(),production.getScaddress(),production.getEms(),production.getPhone(),
					 production.getFax(), production.getEmail(),production.getJjtype(),production.getGsorganization(),production.getZzcode(),
				     production.getCldate(), production.getNzyield(),production.getFddelegate(),production.getFdphone(),production.getQydelegate(),
				     production.getQyphone(),production.getCynumber(),production.getAssay(),production.getDepartment(),production.getSpdelegate(),
				     production.getJiandurenyuan(),production.getXieguanrenyuan(),production.getScpermit(),production.getFazhengjiguan(),production.getFazhengriqi(),
				     production.getYouxiaodate(),production.getLongitude(),production.getLatitude(),production.getIsoapprove(),production.getHacccpapprove(),
				     production.getWghapprove(),production.getLsapprove(),production.getYjapprove(),production.getCapprove(),production.getChanpinName(),
				     production.getZxbzName(),production.getZxbzCode(),production.getBeian(),production.getCpName(),production.getGuiGe(),
				     production.getNianChanLiang(),production.getAdditive(),production.getAdditiveComposition(),production.getAddFoodName(),production.getMaxAmount(),
				     production.getAmount(),production.getHandlers(),production.getChanPinLeiBie(),production.getWtChanPinName(),production.getWtQyName(),
				     production.getWtScAddress(),production.getWtLinkman(),production.getWtTel(),production.getBwtQyName(),production.getBwtScAddress(),
				     production.getBwtLinkName(),production.getBwtTel(),production.getHtSxDate(),production.getWtHtDate(),production.getAmend(), id
			};
			qr.update(sql,params);
	}
	//删除生产企业单位信息
	public void delete(int id) throws SQLException{
			String sql = "delete from production where id=?";
			qr.update(sql, id);
	}
	//查询生产单位总记录数
	public int count() throws SQLException{
			String sql = "select count(*) from production";
			Number number = (Number) qr.query(sql, new ScalarHandler());
			return number.intValue();
	}
	
	//根据公司名称进行模糊查询
	public PageBean<Production> queryByName(String qyname, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		return findByCriteria(experList, pageCode);
	}
	
	//根据所属单位进行分页查询
	public PageBean<Production> queryPage(String department, int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("department", "=", department));
		return findByCriteria(experList, pageCode);
	}
	
	//分页查询
	public List<Production> queryByPage(int offset, int len) throws SQLException{
			String sql = "select * from production limit ?,?";
			return qr.query(sql, new BeanListHandler<Production>(Production.class),offset,len);
	}
	
	//查询生产单位所有公司名称
	public PageBean<Production> fingByCategory(int pageCode) throws SQLException{
		List<Expression> experList = new ArrayList<Expression>();
		return findByCriteria(experList, pageCode);
	}
	
	public PageBean<Production> queryZ(String qyname, String address,
			String department,String fddelegate, String zzcode, int pageCode) throws SQLException {
		List<Expression> experList = new ArrayList<Expression>();
		experList.add(new Expression("qyname", "like","%" + qyname + "%"));
		experList.add(new Expression("address", "like","%" + address + "%"));
		experList.add(new Expression("department", "like","%" + department + "%"));
		experList.add(new Expression("fddelegate", "like","%" + fddelegate + "%"));
		experList.add(new Expression("zzcode", "like","%" + zzcode + "%"));
		
		return findByCriteria(experList, pageCode);
	}
	
	//通用查询方法
	private PageBean<Production> findByCriteria(List<Expression> exprList, int pageCode) throws SQLException{
		/*
		 * 1.得到pageSize
		 * 2.得到totalRecord
		 * 3.得到beanList
		 * 4.创建pageBean返回
		 */
		PageBean<Production> pb1 = new PageBean<Production>();
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
		String sql = "select count(*) from production" + whereSql;
		Number number = (Number)qr.query(sql, new ScalarHandler(), params.toArray());
		int totalRecord = number.intValue();
		
		//当前页的记录
		sql = "select * from production" + whereSql + " order by id limit ?,?";
		params.add((pageCode - 1) * pageSize);
		params.add(pageSize);
		List<Production> datas = qr.query(sql, new BeanListHandler<Production>(Production.class), params.toArray());
		
		PageBean<Production> pb = new PageBean<Production>();
		pb.setDatas(datas);
		pb.setPageCode(pageCode);
		pb.setPageSize(pageSize);
		pb.setTotalRecord(totalRecord);
		return pb;
	}
	
	//获取全部生产企业名称和id
	public List dispNameData() throws SQLException {
		String sql = "select id,qyname from production" ;
		return qr.query(sql, new MapListHandler());
	}
	//根据企业名称查询Production对象
	public Production byqynameFull(String qyname) throws SQLException {
		String sql = "select * from production where qyname=?" ;
		return (Production) qr.query(sql, new BeanHandler(Production.class),qyname);
	}
}
