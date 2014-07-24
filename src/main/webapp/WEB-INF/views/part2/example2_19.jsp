<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
	function mainCtrl($scope) {
		$scope.bgStyle = {
			backgroundColor: 'red'	
		};
		$scope.changeColor = function(color) {
			$scope.bgStyle.backgroundColor = color;
		};
	}
</script>
</head>
<body ng-controller="mainCtrl">
	<div>
		<div ng-style="bgStyle">{{bgStyle.backgroundColor}}</div>
		<button ng-Click="changeColor('yellow')">색 변경</button>
	</div>
</body>
</html>