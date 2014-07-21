package com.angularjs.suhee;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.angularjs.suhee.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeService;
	
	/**
	 * <pre>
	 * 페이지를 반환한다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오전 10:58:49
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomeView() {
		logger.debug("======================================================");
		logger.debug("==================== getHomeView =====================");
		logger.debug("======================================================");
		
		return "home";
	}
	
	/**
	 * <pre>
	 * Json 구조로 반환한다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오전 10:58:40
	 * @return
	 */
	@RequestMapping(value = "/getDate", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> ajaxGetDate() throws Exception{
		logger.debug("======================================================");
		logger.debug("===================== ajaxGetDate ====================");
		logger.debug("======================================================");
		
		Map<String, Object> retMap = new HashMap<String, Object>();
		retMap.put("name", "suhee");
		retMap.put("age", 21);
		
		// iBatis 연동
		homeService.connIbatis();
		
		return retMap;
	}
	
	
	/**
	 * <pre>
	 * transaction 테스트이다.
	 *  
	 * history
	 * 2014. 7. 18. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 18.오후 2:24:00
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/doTransactionTest", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> doTransactionTest() throws Exception{
		logger.debug("======================================================");
		logger.debug("================== doTransactionTest =================");
		logger.debug("======================================================");
		
		// iBatis 연동
		homeService.doTransactionTest();
		
		return null;
	}
	
}
