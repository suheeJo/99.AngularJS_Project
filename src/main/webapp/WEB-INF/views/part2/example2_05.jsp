<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.angularjs.org/1.0.5/angular.min.js"></script> <%-- AngularJS --%>
</head>
<body ng-init="person={name: '재도', favorite: ['사과', '딸기', '포도']}">
	<h1>Hello {{person.name}}</h1>
	<p>좋아하는 과일의 갯수: {{numberOfFavorite = person.favorite.length}}</p>
	<p>과일 갯수 * $100 = {{numberOfFavorite * 100 | currency}}</p>
	<p>재도가 맞나요? {{person.name == '재도'}}</p>
	<p>좋아하는 과일 수가 4개보다 많나요? {{numberOfFavorite > 4}}</p>
	<p>scope에 없는 객체 접근 하면 ? {{car.type.name}}</p>
</body>
</html>