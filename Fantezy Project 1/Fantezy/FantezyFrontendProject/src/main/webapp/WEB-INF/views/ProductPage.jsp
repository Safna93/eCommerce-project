<%@ page language="java" contentType="text/html"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="ProductHeader.jsp" %>
<br><br><br><br>
<div id="container">
<c:forEach items="${prodlist}" var="product"> 
<div class="column">
<div class="col-sm-6 col-md-3">

<a href="ProductDesc/${product.prodid }" class="thumbnail">
<img src="<c:url value="/resources/images/${product.prodid }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/>
</a>
<div class="caption">
<h4>PRODUCT NAME:${product.prodname}</h4>
<p>Rs.${product.price}</p>
</div>
</div>

</div>
</c:forEach>
</div>
<br><br><br><br><br><br><br>

</body>
</html>