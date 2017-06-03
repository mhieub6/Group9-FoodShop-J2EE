<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Create Product</title>
 </head>
 <body>
 
    <jsp:include page="include/_header.jsp"></jsp:include>
    <jsp:include page="include/_menu.jsp"></jsp:include>
    
    <h3>Create Product</h3>
    
    <p style="color: red;">${errorString}</p>
    
    <form method="POST" action="doCreateProduct">
       <table border="0">
          <tr>
             <td>Code</td>
             <td><input type="text" name="code" value="${product.m_idC}" /></td>
          </tr>
          <tr>
             <td>Name</td>
             <td><input type="text" name="name" value="${product.m_tensanphamC}" /></td>
          </tr>
          <tr>
             <td>Price</td>
             <td><input type="text" name="price" value="${product.m_giaC}" /></td>
          </tr>
          <tr>
             <td colspan="2">                  
                 <input type="submit" value="Submit" />
                 <a href="productList">Cancel</a>
             </td>
          </tr>
       </table>
    </form>
    
    <jsp:include page="include/_footer.jsp"></jsp:include>
    
 </body>
</html>