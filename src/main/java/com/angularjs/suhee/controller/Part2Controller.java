package com.angularjs.suhee.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Part2Controller {

	private static final Logger logger = LoggerFactory.getLogger(Part2Controller.class);
	
	/**
	 * <pre>
	 * p67 ::: <예제 2.4> AngularJS의 템플릿 예제 코드
	 *  
	 * history
	 * 2014. 7. 21. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 21.오후 5:05:04
	 * @return
	 */
	@RequestMapping(value = "/exercise24", method = RequestMethod.GET)
	public String getExercise24View() {
		logger.debug("======================================================");
		logger.debug("================== getExercise24View =================");
		logger.debug("======================================================");
		
		return "part2/exercise24";
	}
	
	/**
	 * <pre>
	 * p70 ::: <예제2.5> 다양한 AngularJS 표현식 예제 코드
	 *  
	 * history
	 * 2014. 7. 21. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 21.오후 5:08:10
	 * @return
	 */
	@RequestMapping(value="/exercise25", method=RequestMethod.GET)
	public String getExercise25View() {
		logger.debug("======================================================");
		logger.debug("================== getExercise25View =================");
		logger.debug("======================================================");
		
		return "part2/exercise25";
	}

}
