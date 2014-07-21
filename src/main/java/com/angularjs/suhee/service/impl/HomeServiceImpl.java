package com.angularjs.suhee.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angularjs.suhee.dao.HomeDAO;
import com.angularjs.suhee.model.HomeModel;
import com.angularjs.suhee.service.HomeService;

/**
 * Home 인터페이스 구현체
 * @author 조수희
 *
 */
@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	private HomeDAO homeDao;

	/**
	 * <pre>
	 * iBatis 접근 테스트이다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오전 11:02:17
	 * @throws Exception
	 */
	@Override
	public HomeModel connIbatis() throws Exception {
		
		HomeModel homeModel = homeDao.connIbatis();
		
		return homeModel;
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void doTransactionTest() throws Exception {
		HomeModel homeModel = new HomeModel();
		homeModel.setName("normal");
		homeModel.setTitle("normal");
		
		homeDao.insertData(homeModel); // 정상
		
//		homeModel.setName("12345678901234567890");
//		homeDao.insertData(homeModel); // 비정상
		
		throw new Exception();
		
	}

}
