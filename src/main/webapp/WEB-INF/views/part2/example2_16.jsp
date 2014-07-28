<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<style type="text/css">
	.ng-invalid {
		border: 3px solid red;
	}
	
	.ng-valid {
		border: 3px solid green;
	}
	
	.ng-pristin {
		border-style: solid;
	}
	
	.ng-dirty {
		border-style: dashed;
	}
</style>
</head>
<body>
	<form name="sampleForm" ng-init="name='철수'">
		이름: <input type="text" name="name" ng-model="name" ng-maxlength="3" ng-required="true">
		핸드폰 번호: <input type="text" name="tel" ng-model="tel" ng-pattern="/^\d{3}-\d{3,4}-\d{4}$/" >
	</form>
</body>
</html>