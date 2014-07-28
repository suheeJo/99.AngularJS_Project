package com.angularjs.suhee.dao;

import org.springframework.stereotype.Repository;

import com.angularjs.suhee.common.BaseDao;
import com.angularjs.suhee.model.HomeModel;

/**
 * Home DAO 클래스
 * @author 조수희
 *
 */
@Repository
public class HomeDAO extends BaseDao{

	/**
	 * <pre>
	 * iBatis 접근 테스트이다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오전 11:12:57
	 * @return
	 * @throws Exception
	 */
	public HomeModel connIbatis() throws Exception {
		return (HomeModel) getSqlMapClientTemplate().queryForObject("HOME.getData");
	}

	public void insertData(HomeModel homeModel) throws Exception {
		getSqlMapClientTemplate().insert("HOME.insertData", homeModel);
	}
	
}
