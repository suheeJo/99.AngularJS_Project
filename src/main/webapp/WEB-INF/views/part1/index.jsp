<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app> <%-- ng-app: ������ ���������� AngularJS �� ���ø����̼����� ����� --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>TODO App Demo</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"> <%-- CDN�� �̿��� Ʈ���� ��Ʈ��Ʈ�� ���� --%>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
var todoList = [];
todoList.push({done: true, title: "AngularJS ����"});
todoList.push({done: false, title: "AngularJS �����ϱ�"});
todoList.push({done: false, title: "���� ������Ʈ ����"});



function todoCtrl($scope) {
	$scope.appName = "AngularJS TODO APP";
	// �ʱ� �� �� ��� ����
	$scope.todoList = todoList;
	// ���ο� �� �� �߰�
	$scope.addNewTodo = function(newTitle) {
		todoList.push({done: false, title: newTitle});
	};
	// �Ϸ��� �� ����
	$scope.newTitle = "";
	$scope.archive = function() {
		for(var i=$scope.todoList.length-1 ; i>=0 ; i--) {
			if($scope.todoList[i].done) {
				$scope.todoList.splice(i, 1);
			}
		}
	};
	// ���� �� �� �� ���
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
	
	<p>��ü �� �� <strong>{{todoList.length}}</strong>�� / ���� ���� <strong>{{remain()}}</strong>
	[ <a href="" ng-click="archive()">�����ϱ�</a> ]</p>
	
	<ul class="list-unstyled">
		<li ng-repeat="todo in todoList" class="checkbox"><input type="checkbox" ng-model="todo.done">{{todo.title}}</li>
		<li class="checkbox"><input type="checkbox">AngularJS ����</li>
		<li class="checkbox"><input type="checkbox">���� ������Ʈ ����</li>
	</ul>
	
	<form name="newItemForm" class="forn-inline" action="">
		<div class="form-group">
			<label class="sr-only" for="newItemText">���ο� �� ��</label>
			<input type="text" class="form-control" name="newItemText" placeholder="���ο� �� ��" ng-model="newTitle">
		</div>
		<button type="submit" class="btn btn-default" ng-click="addNewTodo(newTitle)">�߰�</button>
	</form>
</body>
</html>