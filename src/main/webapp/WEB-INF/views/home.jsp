<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$.ajax({
		url: "getDate",
		type: "POST",
		dataType: "json",
		cache: false,
		async: false,
		success: function(data) {
			console.log(data);
		},
		error: function(xhr, status, error) {
			alert(xhr);
			console.dir(error);
		}
	});
});
</script>
</head>
<body>

<h1>
	Hello world!  
</h1>

</body>
</html>
