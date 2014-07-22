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
	동의 여부 : <input type="checkbox" ng-model="checked">
	<br/>
	<div>
		<span ng-show="checked">
			다음으로 진행합니다. <button>계속</button>
		</span>
	</div>
	<div>
		<span ng-hide="checked">
			다음으로 진행할 수 없습니다.
		</span>
	</div>
</body>
</html>