<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
</head>
<body>
	<form name="sampleForm" ng-init="name='철수'">
		이름: <input type="text" name="name" ng-model="name" ng-maxlength="3" ng-required="true" >
		<span class="error" ng-show="sampleForm.name.$error.required">필수입력</span>
		<br/>
		핸드폰 번호: <input type="text" name="tel" ng-model="tel" ng-pattern="/^\d{3}-|d{3,4}-\d{4}$/" >
		<span class="error" ng-show="sampleForm.tel.$error.pattern">000-0000-0000</span>
		<br/>
		<p>사용자 정보: {{name}}/{{tel}}</p>
		<p>sampleForm.name.$valid = {{sampleForm.name.$valid}}</p>
		<p>sampleForm.name.$error = {{sampleForm.name.$error}}</p>
		<p>sampleForm.tel.$valid = {{sampleForm.tel.$valid}}</p>
		<p>sampleForm.tel.$error = {{sampleForm.tel.$error}}</p>
		<p>sampleForm.$valid = {{sampleForm.$valid}}</p>
		<p>sampleForm.$error.required = {{sampleForm.$error.required}}</p>
	</form>
</body>
</html>