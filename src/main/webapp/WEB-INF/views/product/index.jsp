<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Adicionar Novo Produto</title>
	</head>
	<body>
	<h3>Adicionar Novo Produto</h3>
	<s:form methotd="post" modelAttribute="product" enctype="multipart/form-data" 
	                                                              action="product/save">
		<table>
			<tr>
				<td>Id</td>
				<td><s:input path="id"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><s:input path="name"/></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><s:input path="price"/></td>
			</tr>
			<tr>
				<td>Photo</td>
				<td><input type="file" name="file"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"></td>
			</tr>
		</table>	
	</s:form>
	</body>
</html>