<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="include/_header.jsp"></jsp:include>
	<jsp:include page="include/_menu.jsp"></jsp:include>
	
	
	    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>ID ARTICAL</th>
          <th>USER</th>
          <th>TITLE</th>
          <th>SHORT DETAIL</th>
          <th>LONG DETAIL</th>
          <th>DATE CREATE</th>
          <th>DATE UPDATE</th>
       </tr>
       <c:forEach items="${articallist}" var="artical" >
          <tr>
             <td>${artical.m_idNewC}</td>
             <td>${artical.m_id_userC}</td>
             <td>${artical.m_titleC}</td>
             <td>${artical.m_short_detailC}</td>
             <td>${artical.m_long_detailC}</td>
             <td>${artical.m_date_createC}</td>
             <td>${artical.m_date_updateC}</td>
             <td>
                <a href="permisionArtical?m_idNewC=${artical.m_idNewC}">Permision</a>
             </td>
             <td>
                <a href="deleteArtical?m_idNewC=${artical.m_idNewC}">Delete</a>
             </td>
          </tr>
       </c:forEach>
    </table>
 
    <jsp:include page="include/_footer.jsp"></jsp:include>
</body>
</html>