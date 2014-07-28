<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
</head>
<body>
	<div ng-init="countryList=[{name: '한국', code: 'KR', continent: '아시아'}, {name: '일본', code: 'jr', continent: '아시아'}, {name: '미국', code: 'en', continent: '북미'}]">
		<form name="myRouteForm">
			<div>
				출발 국가:
				<select ng-model="depCountry" ng-options="country.name for country in countryList" ng-required="true">
					<option value="">선택하여 주세요</option>
				</select>
			</div>
			<div>
				경유 국가:
				<select ng-model="viaCountry" ng-options="country.name as country.name for country in countryList">
					<option value="">선택하여 주세요</option>
				</select>
			</div>
			<div>
				도착 국가(대륙 그룹별):
				<select ng-model="arrCountry" ng-options="country.name group by country.continent for country in countryList" ng-required="true">
					<option value="">선택하여 주세요</option>
				</select>
			</div>
		</form>
		<div>
			<p>출발 국가: {{depCountry.name}}</p>
			<p>경유 국가: {{viaCountry}}</p>
			<p>도착 국가: {{arrCountry.name}}</p>
		</div>
		<div ng-show="myRouteForm.$invalid">
			출발 국가와 도착 국가는 필히 선택해주세요.
		</div>
	</div>
</body>
</html>