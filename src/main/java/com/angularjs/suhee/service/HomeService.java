package com.angularjs.suhee.service;

import com.angularjs.suhee.model.HomeModel;

/**
 * Home 인터페이스
 * @author 조수희
 *
 */
public interface HomeService {
	
	/**
	 * <pre>
	 * iBatis 접근 테스트이다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오전 11:14:00
	 * @return
	 * @throws Exception
	 */
	public HomeModel connIbatis() throws Exception;
	
	/**
	 * <pre> 
	 * transaction 테스트이다.
	 * 
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오후 2:25:55
	 * @throws Exception
	 */
	public void doTransactionTest() throws Exception;

}
