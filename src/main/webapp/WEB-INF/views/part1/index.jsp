<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app> <%-- ng-app: 정적인 페이지에서 AngularJS 웹 애플리케이션으로 변경됨 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>TODO App Demo</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"> <%-- CDN을 이용한 트위터 부트스트래 적용 --%>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
var todoList = [];
todoList.push({done: true, title: "AngularJS 독서"});
todoList.push({done: false, title: "AngularJS 공부하기"});
todoList.push({done: false, title: "개인 프로젝트 구성"});



function todoCtrl($scope) {
	$scope.appName = "AngularJS TODO APP";
	// 초기 할 일 목록 설정
	$scope.todoList = todoList;
	// 새로운 할 일 추가
	$scope.addNewTodo = function(newTitle) {
		todoList.push({done: false, title: newTitle});
	};
	// 완료한 일 삭제
	$scope.newTitle = "";
	$scope.archive = function() {
		for(var i=$scope.todoList.length-1 ; i>=0 ; i--) {
			if($scope.todoList[i].done) {
				$scope.todoList.splice(i, 1);
			}
		}
	};
	// 남은 할 일 수 계산
	$scope.remain = function() {
		var remainCount = 0;
		angular.forEach($scope.todoList, function(value, key) {
			if(value.done == false) {
				remainCount++;
			}
		});
		return remainCount;
	};
}
</script>
</head>
<!-- <body class="well" ng-init="appName='AngularJS TODO APP'"> -->
<body class="well" ng-controller="todoCtrl">
	<h1>{{appName}}</h1>
	
	<p>전체 할 일 <strong>{{todoList.length}}</strong>개 / 남은 할일 <strong>{{remain()}}</strong>
	[ <a href="" ng-click="archive()">보관하기</a> ]</p>
	
	<ul class="list-unstyled">
		<li ng-repeat="todo in todoList" class="checkbox"><input type="checkbox" ng-model="todo.done">{{todo.title}}</li>
		<li class="checkbox"><input type="checkbox">AngularJS 독서</li>
		<li class="checkbox"><input type="checkbox">개인 프로젝트 구성</li>
	</ul>
	
	<form name="newItemForm" class="forn-inline" action="">
		<div class="form-group">
			<label class="sr-only" for="newItemText">새로운 할 일</label>
			<input type="text" class="form-control" name="newItemText" placeholder="새로운 할 일" ng-model="newTitle">
		</div>
		<button type="submit" class="btn btn-default" ng-click="addNewTodo(newTitle)">추가</button>
	</form>
</body>
</html>