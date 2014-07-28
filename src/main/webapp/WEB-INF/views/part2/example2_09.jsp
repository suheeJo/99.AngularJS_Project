<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<style type="text/css">
	.box {
		width: 100px;
		height: 100px;
	}
	
	.red {
		background-color: red;
	}
	
	.green {
		background-color: green;
	}
	
	.blue {
		background-color: blue;
	}
	
	.black {
		background-color: black;
	}
</style>
<script type="text/javascript">
</script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<input type="radio" ng-model="color" value="red">빨간색<br/>
		<input type="radio" ng-model="color" value="green">녹색<br/>
		<input type="radio" ng-model="color" value="blue">파란색<br/>
	
		<div ng-switch="color">
			<div ng-switch-when="red" class="box red"></div>
			<div ng-switch-when="green" class="box green"></div>
			<div ng-switch-when="blue" class="box blue"></div>
			<div ng-switch-default class="box black"></div>
		</div>
	</div>
</body>
</html>