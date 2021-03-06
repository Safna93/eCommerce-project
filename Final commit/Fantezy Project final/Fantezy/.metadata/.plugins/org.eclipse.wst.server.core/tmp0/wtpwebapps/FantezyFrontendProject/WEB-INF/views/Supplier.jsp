<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="AdminHeader.jsp"%>


<form:form action="InsertSupplier" modelAttribute="supplier">
<table align="center">
			<tr>
				<td colspan="2"><center><h3><b>Supplier Details</b></h3></center></td>
			</tr>
			<tr>
				<td><h4><b>Supplier ID</b></h4></td>
				<td><form:input path="suppid" disabled="true" readonly="true"/></td>
			</tr>
			<tr>
				<td><h4><b>Supplier Name</b></h4></td>
				<td><form:input path="suppname" required="true"/></td>
			</tr>
			
			
				<td><h4><b>Supplier Address</b></h4></td>
				<td><form:textarea path="suppaddress" required="true"/></td>
			</tr>
			
			<tr>
			<td colspan="2"><input type="submit" /></td>
			</tr>
</table>
</form:form>

<!-- Displaying the Supplier data using Table -->
<table cellspacing="2" align="center" border="5">

	<tr bgcolor="#ff66ff">
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operations</td>
		
	</tr>
	<c:forEach items="${supplist}" var="supplier">
		<tr bgcolor="#00ff99">
			<td>${supplier.suppid}</td>
			<td>${supplier.suppname}</td>
			<td>${supplier.suppaddress}</td>
			<td><a href="<c:url value="deleteSupplier/${supplier.suppid}"/>">Delete</a>
				<a href="<c:url value="updateSupplier/${supplier.suppid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>