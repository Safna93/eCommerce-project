



<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="AdminHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Fatntezy-The Girlz Corner</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<form:form method="POST" action="InsertProduct" modelAttribute="product" enctype="Multipart/form-data">
<table align="center">
			<tr>
				<td colspan="2"><center><h3><b>Product Details</b></h3></center></td>
			</tr>
			<tr>
			
			
				<td><h4><b>Product ID</b></h4></td>
				<c:choose>
				<c:when test="${!empty product.prodid}">
				<td><form:input path="prodid" disabled="true" readonly="true" /></td>
				</c:when>
						<c:otherwise>
						<td><form:input path="prodid" required="true"/></td>
					</c:otherwise>
				</c:choose>
					</tr>	
					
				
			
			<tr>
				<td><h4><b>Product Name</b></h4></td>
				<td><form:input path="prodname" required="true" /></td>
			</tr>
			
			<tr>
				<td><h4><b>Category</b></h4></td>
				<td><form:select path="catid" required="true">
						<form:option value="0" label="------Select----" />
						<form:options items="${catlist}" />
					</form:select>
				</td>
			</tr>		
			<tr>
				<tr>
				<td><h4><b>Supplier</b></h4></td>
				<td><form:input path="suppid" required="true" /></td>
			</tr>
			</tr>		
			
			<tr>
				<td><h4><b>Price</b></h4></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			<tr>
				<td><h4><b>Stock</b></h4></td>
				<td><form:input path="quantity" required="true"/></td>
			</tr>
			<tr>
				<td><h4><b>Product Desc</b></h4></td>
				<td><form:textarea path="proddesc" required="true" /></td>
			</tr>
			<tr>
				<td><h4><b>Product Image</b></h4></td>
				<td><form:input type="file" path="pimage" /></td>
			</tr>
			
			<tr>
			<td colspan="2"><input type="submit" class="btn btn-default"/></td>
			
			</tr>
</table>
</form:form>

<!-- Displaying the Product data using Table -->
<table cellspacing="2" align="center" border="5">

	<tr bgcolor="#ff66ff">
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>Category Id</td>
		
		<td>Operations</td>
	</tr>
	<c:forEach items="${prodlist}" var="product">
		<tr bgcolor="#00ff99">
			<td>${product.prodid}</td>
			<td>${product.prodname}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			<td>${product.catid}</td>
			<!--  <td>${product.suppid}</td>-->
			<td><a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a>
				<a href="<c:url value="updateProduct/${product.prodid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>
</body>
</html>