<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  	<jsp:include page="include/_header.jsp"></jsp:include>
    <jsp:include page="include/_menuCustomer.jsp"></jsp:include>
    

    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>ID PRODUCT</th>
          <th>NAME PRODUCT</th>
          <th>PRICE</th>
       </tr>
       <c:forEach items="${catalog}" var="product" >
          <tr>
             <td>${product.m_idC}</td>
             <td>${product.m_tensanphamC}</td>
             <td>${product.m_giaC}</td>
             <td>
                <a href="buyProduct?m_idC=${product.m_idC}&m_giaC=${product.m_giaC}&m_tensanphamC=${product.m_tensanphamC}"> BUY</a>
             </td>
          </tr>
       </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/gocart">GO TO YOUR CART</a>
    <jsp:include page="include/_footer.jsp"></jsp:include>
    
</body>
</html>