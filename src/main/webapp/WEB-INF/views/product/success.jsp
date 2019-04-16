<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" Content="text/html; charset=UTF-8">
		<title>Informação do Produto</title>
	</head>
	<body>
		<h3>Informação do Produto</h3>
		<table cellpadding="1" cellspacing="1" border="1">
			<tr>
				<td>Id</td>
				<td>${product.id }</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${product.name }</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>${product.price }</td>
			</tr>
			<tr>
				<td>Photo</td>
				<td><img src="${pageContext.request.contextPath }/resources/images/${product.photo }" /></td>
			</tr>			
		</table>
	</body>
</html>