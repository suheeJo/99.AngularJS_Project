<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
	function customerCtrl($scope) {
		var customerList = [{name: '영희', age: 10}, {name: '순희', age: 28}];
		var youngCusterList = [];
		
		angular.forEach(customerList, function(value, key) {
			if(value.age < 18) {
				youngCusterList.push(value);
			}
		});
		
		$scope.customerList = customerList;
		$scope.youngCusterList = youngCusterList;
	}
</script>
</head>
<body ng-controller="customerCtrl">
	<div>
		고객 목록
		<ul ng-repeat="customer in customerList">
			<li>[{{$index + 1}}] 고객 이름 : {{customer.name}}, 고객 나이: {{customer.age}}</li>
		</ul>
	</div>
	
	<div>
		18세 미만 고객
		<ul ng-repeat="youngCuster in youngCusterList">
			<li>[{{$index + 1}}] 고객 이름: {{youngCuster.name}}, 고객 나이: {{youngCuster.age}}</li>
		</ul>
	</div>
</body>
</html>