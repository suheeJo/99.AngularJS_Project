<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<title>Insert title here</title>
</head>
<body ng-init="person={name: '재도', favorite: ['사과', '딸기', '포도']}">
	<h1>Hello {{person.name}}</h1>
	<h2>좋아하는 과일</h2>
	<ul ng-repeat="fruit in person.favorite">
		<li><a href="#<%-- {{fruit}} error --%>">{{fruit}}</a></li>
	</ul>
</body>
</html>