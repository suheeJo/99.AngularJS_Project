<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.box {
		width: 100px;
		height: 60px;
		margin: 10px;
		background-color: black;
		color: white;
		text-align: center;
		padding-top: 40px;
	}
</style>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
function mainCtrl($scope) {
	$scope.message = "";
	$scope.eventCnt = 0;
	$scope.handleEvt = function(message) {
		$scope.message = message;
		$scope.eventCnt++;
	};
}
</script>
</head>
<body ng-controller="mainCtrl">
	<div>
		<div class="box" ng-click="handleEvt('박스 클릭됬다.')">Click</div>
		<div class="box" ng-mousedown="handleEvt('박스 mousedown 이벤트 발생.')">mousedown</div>
		<div class="box" ng-mouseenter="handleEvt('박스 mouseenter 이벤트 발생.')">mouseenter</div>
		<div class="box" ng-mousemove="handleEvt('박스 mousemove 이벤트 발생.')">mousemove</div>
		change: <input type="text" ng-model="inputText" ng-change="handleEvt('입력 박스의 값이 변경되었다.')">
		keydown: <input type="text" ng-model="inputText2" ng-change="handleEvt($event.keyCode+'키코드 눌러짐')">
	</div>
	<div>
		<p>{{message}} {{eventCnt}}</p>
	</div>
</body>
</html>