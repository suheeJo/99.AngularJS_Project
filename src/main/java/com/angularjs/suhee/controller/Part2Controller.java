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
	 * 테스트으으으
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
	

	/**
	 * <pre>
	 * p94 ::: <예제2.13> 텍스트 타입의 <input> 태그 예제 코드
	 *  
	 * history
	 * 2014. 7. 23. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 23.오후 4:05:54
	 * @return
	 */
	@RequestMapping(value="/example213", method=RequestMethod.GET)
	public String getExample213View() {
		logger.debug("======================================================");
		logger.debug("================== getExample213View =================");
		logger.debug("======================================================");
		
		return "part2/example2_13";
	}
	

	/**
	 * <pre>
	 * p99 ::: <예제2.14> 체크박스 타입의 <input> 요소 예제 코드
	 *  
	 * history
	 * 2014. 7. 23. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 23.오후 5:19:20
	 * @return
	 */
	@RequestMapping(value="/example214", method=RequestMethod.GET)
	public String getExample214View() {
		logger.debug("======================================================");
		logger.debug("================== getExample214View =================");
		logger.debug("======================================================");
		
		return "part2/example2_14";
	}
	

	/**
	 * <pre>
	 * p101 ::: <select> 요소 사용 예제
	 *  
	 * history
	 * 2014. 7. 23. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 23.오후 5:49:34
	 * @return
	 */
	@RequestMapping(value="/example215", method=RequestMethod.GET)
	public String getExample215View() {
		logger.debug("======================================================");
		logger.debug("================== getExample215View =================");
		logger.debug("======================================================");
		
		return "part2/example2_15";
	}
	

	/**
	 * <pre>
	 * p103 ::: <예제2.16> CSS 클래스를 이용한 유효성 검증 결과 예제 코드
	 *  
	 * history
	 * 2014. 7. 23. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 23.오후 6:11:19
	 * @return
	 */
	@RequestMapping(value="/example216", method=RequestMethod.GET)
	public String getExample216View() {
		logger.debug("======================================================");
		logger.debug("================== getExample216View =================");
		logger.debug("======================================================");
		
		return "part2/example2_16";
	}
	

	/**
	 * <pre>
	 * p106 ::: <예제2.17> 이벤트 지시자 사용 예제
	 *  
	 * history
	 * 2014. 7. 24. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 24.오후 4:23:00
	 * @return
	 */
	@RequestMapping(value="/example217", method=RequestMethod.GET)
	public String getExample217View() {
		logger.debug("======================================================");
		logger.debug("================== getExample217View =================");
		logger.debug("======================================================");
		
		return "part2/example2_17";
	}
	

	/**
	 * <pre>
	 * p109 ::: <예제2.18> ng-class 사용 예제
	 *  
	 * history
	 * 2014. 7. 24. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 24.오후 4:52:01
	 * @return
	 */
	@RequestMapping(value="/example218", method=RequestMethod.GET)
	public String getExample218View() {
		logger.debug("======================================================");
		logger.debug("================== getExample218View =================");
		logger.debug("======================================================");
		
		return "part2/example2_18";
	}
	

	/**
	 * <pre>
	 * p111 ::: <예제2.19> ng-style 사용 예제
	 *  
	 * history
	 * 2014. 7. 24. by 조수희
	 * 초기 개발
	 * </pre>
	 *
	 * @since 2014. 7. 24.오후 5:14:37
	 * @return
	 */
	@RequestMapping(value="/example219", method=RequestMethod.GET)
	public String getExample219View() {
		logger.debug("======================================================");
		logger.debug("================== getExample219View =================");
		logger.debug("======================================================");
		
		return "part2/example2_19";
	}
}
