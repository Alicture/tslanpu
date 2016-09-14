package cn.tslanpu.test.add.food.service;

import java.util.List;
import java.sql.SQLException;

import cn.tslanpu.test.add.food.dao.FoodDao;
import cn.tslanpu.test.add.food.domain.Food;
import cn.tslanpu.test.pager.PageBean;


public class FoodService {
	private FoodDao foodDao = new FoodDao();
	//增加流通单位信息
	public void add(Food food){
		try {
			foodDao.add(food);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public List FindQyname(){
		try
		{
			return foodDao.qynameData();
		} catch (SQLException e)
		{
			throw new RuntimeException();
		}
	}
	
	public Food foodFind(int id){
		try {
			return foodDao.foodFind(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public void foodUpdate(int id, Food food){
		try {
			foodDao.foodUpdate(id, food);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public void delete(int id){
		try {
			foodDao.delete(id);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//根据公司名称进行模糊查询
	public PageBean<Food> queryByName(String qyname, int pageCode){
		try {
			return foodDao.queryByName(qyname, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	//根据所属单位进行分页查询
	public PageBean<Food> queryPage(String department, int pageCode){
		try {
			return foodDao.queryPage(department, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	//根据所有单位进行分页查询
	public PageBean<Food> fingByCategory(int pageCode){
		try {
			return foodDao.fingByCategory(pageCode);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public PageBean<Food> queryZ(String qyname, String address,
			String department, String fddelegate, String zzcode, int pageCode) {
		try {
			return foodDao.queryZ(qyname, address, department,fddelegate, zzcode, pageCode);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
