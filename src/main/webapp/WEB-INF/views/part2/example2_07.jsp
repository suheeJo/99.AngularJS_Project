<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>one way data binding</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
<script type="text/javascript">
	function mainCtrl($scope) {
		var menuList = [
			{itemId: 1, itemName: "샌드위치", itemPrice: 2000, itemCount: 0},
			{itemId: 2, itemName: "아메리카노", itemPrice: 1000, itemCount: 0}, 
			{itemId: 3, itemName: "카푸치노", itemPrice: 1500, itemCount: 0},
		];
		
		$scope.menuList = menuList;
		$scope.totalPrice = 0;
		
		$scope.buy = function() {
			$scope.totalprice = 0;
			
			angular.forEach($scope.menuList, function(menu, idx) {
				$scope.totalPrice = $scope.totalPrice + (menu.itemPrice * Number(menu.itemCount));
			});
		};
	}
</script>
</head>
<body ng-controller="mainCtrl">
	<div>
		<h1>메뉴판</h1>
		<h2>메뉴 목록</h2>
		<table>
			<thead>
				<tr>
					<th>메뉴</th>
					<th>가격</th>
					<th>갯수</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="menu in menuList">
					<td>{{menu.itemName}}</td>
					<td>{{menu.itemPrice}}</td>
					<td><input type="text" ng-model="menu.itemCount"></td>
				</tr>
			</tbody>
		</table>
		<button ng-click="buy()">구매</button>
		<h2>구입 가격</h2>
		<div>
			가격: {{totalPrice}}
		</div>
	</div>
</body>
</html>