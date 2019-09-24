<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/JS/function.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Hello World</title>
</head>
<body>

	<div class="container">
		<form action="processForm" method="get" class="form-inline"
			id="form_one">

			<div class="form-group">

				<div class="col-sm-10">
					<label for="studentName" class="control-label"> Input field
					</label> <input class="form-control" type="text" name="studentName"
						placeholder="name" /> <input class="form-control" type="submit">
				</div>
				<div>
					<div>
						<input type="radio" name="actionType" value="1"
							onclick="javascript:changeActionForm(1)"> Simple Controller

						<input type="radio" name="actionType" value="2"
							onclick="javascript:changeActionForm(2)"> RequestParam	

						<input type="radio" name="actionType" value="2"
							onclick="javascript:changeActionForm(3)"> HTTPREQUEST
					</div>

				</div>

			</div>

		</form>
	</div>
</body>
</html>