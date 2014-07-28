<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<title>Insert title here</title>
</head>
<body>
	약관에 동의: <input type="checkbox" ng-model="checked" ng-init="checked=false" />
	<br/>
	동의하면 다음으로 진행됩니다.
	<button ng-if="checked">다음</button>
</body>
</html>