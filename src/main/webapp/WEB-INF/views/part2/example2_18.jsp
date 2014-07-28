<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.apple {
		background-color: red;
	}
	
	.lemon {
		background-color: yellow;
	}
	
	.even {
		background-color: blue;
	}
</style>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
</head>
<body>
	<div ng-init="fruitList=['apple', 'banana', 'tomato', 'lemon', 'grape']">
		<ul>
			<li ng-repeat="fruit in fruitList" ng-class="'{{fruit}}'">{{fruit}}</li>
		</ul>
		<ul>
			<li ng-repeat="fruit in fruitList" ng-class="{'even': {{$index%2==0}}}">{{fruit}}</li>
		</ul>
	</div>
</body>
</html>