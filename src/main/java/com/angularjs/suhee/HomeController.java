package com.angularjs.suhee;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * <pre>
	 * �� �������� ��ȯ�Ѵ�.
	 *  
	 * history
	 * 2014. 7. 15. by ������
	 * �ʱ� ����
	 * </pre>
	 *
	 * @since 2014. 7. 15.���� 3:24:06
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomeView() {
		logger.debug("======================================================");
		logger.debug("==================== getHomeView =====================");
		logger.debug("======================================================");
		
		return "home";
	}
	
	/**
	 * <pre>
	 * �� �������� �ʿ��� �����͸� JSON�������� ��ȯ�Ѵ�.
	 *  
	 * history
	 * 2014. 7. 15. by ������
	 * �ʱ� ����
	 * </pre>
	 *
	 * @since 2014. 7. 15.���� 3:24:14
	 * @return
	 */
	@RequestMapping(value = "/getDate", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> ajaxGetDate() {
		logger.debug("======================================================");
		logger.debug("===================== ajaxGetDate ====================");
		logger.debug("======================================================");
		
		Map<String, Object> retMap = new HashMap<String, Object>();
		retMap.put("name", "suhee");
		retMap.put("age", 21);
		
		return retMap;
	}
	
}
