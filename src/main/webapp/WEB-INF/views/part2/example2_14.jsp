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
	<form name="sampleForm" ng-init="value1=true; value2='좋다';">
		선택 1: <input type="checkbox" name="check1" ng-model="value1" >
		<br/>
		선택 2: <input type="checkbox" name="check2" ng-model="value2" ng-true-value="좋다" ng-false-value="싫다" >
		<br/>
		<p>선택1의 바인딩된 값: {{value1}}</p>
		<p>선택2의 바인딩된 값: {{value2}}</p>
	</form>
</body>
</html>