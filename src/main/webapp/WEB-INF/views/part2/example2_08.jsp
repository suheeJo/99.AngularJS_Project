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
	<div ng-init="customerList=[{name: '영희', age: 25}, {name: '순희', age: 28}]">
		고객 목록
		<ul>
			<li ng-repeat="customer in customerList">[{{$index + 1}}] 고객 이름 : {{customer.name}}, 고객 나이: {{customer.age}}</li>
		</ul>
	</div>
	
	<div ng-init="myFriend={name: '철수', age: 25, hobby: '축구'}">
		내 친구 소개
		<ul>
			<li ng-repeat="(attr, value) in myFriend">{{attr}} : {{value}}</li>
		</ul>
	</div>
</body>
</html>