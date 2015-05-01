package com.gxjk.risk.daos;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;

import com.gxjk.risk.utils.ListPager;


 

public interface BaseDAO {
	
	public SessionFactory getSessionFactory();

	public void deleteById(Serializable  id,Class<?> clazz) throws SQLException;
	
	public Object selectById(Serializable id, Class<?> clazz)
			throws SQLException;

	public void insert(final Object entity) throws SQLException;

	public void delete(Object entity) throws SQLException;

	public void update(Object entity) throws SQLException;

	public List<?> selectByHQL(String hql) throws SQLException;

	public List<?> selectPage(String hql, ListPager pager) throws SQLException;

	public List<?> selectByHQL(String hql, Object[] parameters) throws SQLException;
	
	public List<?> selectByHQL(String hql, Map<String,Object> parameters) throws SQLException;
	
	
	
	public List<?> selectBySQL (String sql,Class<?> clazz) throws SQLException;
	
	public List<?>selectPageByHQL(String hql, Map<String, Object> param,int from, int to)throws SQLException;
	
	public ListPager selectPageByHql(String hql, Object[] parameters, ListPager pager)
			throws SQLException;
	
	public ListPager selectPageByHql(String hql, Map<String, Object> param,
			ListPager pager) throws SQLException;
	
	public ListPager selectPageBySQL(String sql, Object[] parameters,Class<?> clazz, ListPager pager)
			throws SQLException;
	public ListPager selectPageBySQL(String sql,  Map<String, Object> param,Class<?> clazz, ListPager pager)
			throws SQLException;

	public List<?> selectPageByHQL(String hql, Object[] parameters, int from, int to)
			throws SQLException;
	
	public List<?> selectPageBySQL(String sql, Object[] parameters, int from,Class<?> clazz,
			int to)
			throws SQLException;
	

	

	public Object selectOneByHQL(String hql) throws SQLException;
	
	public Object selectOneByHQL(String hql, Object[] parameters) throws SQLException;
	
	public Object selectOneByHQL(String hql, Map<String, Object> parameters) throws SQLException;
	
	public Object selectOneBySQL(String sql,Class<?> clazz) throws SQLException;
	
	public Object selectOneBySQL(String sql, Object[] parameters,Class<?> clazz)
			throws SQLException;

	public int executeUpdate(String sql, Object[] parameters)
			throws SQLException;

	public int executeUpdateBatch(final String hql,
			final ArrayList<Object[]> parameters) throws SQLException;

	public int executeUpdateBatch(String sql, ArrayList<Object[]> parametersal,
			int batchSize) throws SQLException;

	public int executeUpdateBySql(String sql) throws SQLException;

	public int executeUpdateBySql(String sql, Object[] parameters)
			throws SQLException;

	public int executeUpdateByHql(String hql) throws SQLException;

	public int executeUpdateByHql(String hql, Object[] parameters)
			throws SQLException;

	public long selectTotalRowCount(String sql, Object[] parameters)
			throws SQLException;

	public Object executeQueryOne(String sql, Object[] parameters,
			Class<?>  clazzs) throws SQLException;

	public List<?> executeQuery(String sql, Object[] parameters, Class<?> clazzs)
			throws SQLException;
	
	public int executeUpdateByHql(String hql, Map<String, Object> parameter) ;

}
