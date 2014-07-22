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
	@RequestMapping(value = "/example24", method = RequestMethod.GET)
	public String getExercise24View() {
		logger.debug("======================================================");
		logger.debug("================== getExample24View ==================");
		logger.debug("======================================================");
		
		return "part2/example2_04";
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
	@RequestMapping(value="/example25", method=RequestMethod.GET)
	public String getExercise25View() {
		logger.debug("======================================================");
		logger.debug("================== getExample25View ==================");
		logger.debug("======================================================");
		
		return "part2/example2_05";
	}
	

	/**
	 * <pre>
	 * p77 ::: <예제2.7> 양방향 데이터 바인딩 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 2:25:04
	 * @return
	 */
	@RequestMapping(value="/example27", method=RequestMethod.GET)
	public String getExercise27View() {
		logger.debug("======================================================");
		logger.debug("================== getExample27View ==================");
		logger.debug("======================================================");
		
		return "part2/example2_07";
	}
	

	/**
	 * <pre>
	 * p82 ::: <예제2.8> ng-repeat 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 4:17:58
	 * @return
	 */
	@RequestMapping(value="/example28", method=RequestMethod.GET)
	public String getExample28View() {
		logger.debug("======================================================");
		logger.debug("================== getExample28View ==================");
		logger.debug("======================================================");
		
		return "part2/example2_08";
	}
	
	/**
	 * <pre>
	 * p85 ::: <예제2.9> ng-switch 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 4:36:39
	 * @return
	 */
	@RequestMapping(value="/example29", method=RequestMethod.GET)
	public String getExample29View() {
		logger.debug("======================================================");
		logger.debug("================== getExample29View ==================");
		logger.debug("======================================================");
		
		return "part2/example2_09";
	}

	/**
	 * <pre>
	 * p88 ::: <예제2.10> ng-if 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 4:47:17
	 * @return
	 */
	@RequestMapping(value="/example210", method=RequestMethod.GET)
	public String getExample210View() {
		logger.debug("======================================================");
		logger.debug("================== getExample210View =================");
		logger.debug("======================================================");
		
		return "part2/example2_10";
	}
	

	/**
	 * <pre>
	 * p89 ::: <예제2.11> ng-show/ng-hide 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 5:18:58
	 * @return
	 */
	@RequestMapping(value="/example211", method=RequestMethod.GET)
	public String getExample211View() {
		logger.debug("======================================================");
		logger.debug("================== getExample211View =================");
		logger.debug("======================================================");
		
		return "part2/example2_11";
	}
	
	/**
	 * <pre>
	 * p91 ::: <예제2.12> ng-controller 사용 예제 코드
	 *  
	 * history
	 * 2014. 7. 22. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 22.오후 5:53:01
	 * @return
	 */
	@RequestMapping(value="/example212", method=RequestMethod.GET)
	public String getExample212View() {
		logger.debug("======================================================");
		logger.debug("================== getExample212View =================");
		logger.debug("======================================================");
		
		return "part2/example2_12";
	}
}
