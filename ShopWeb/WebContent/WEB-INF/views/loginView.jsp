<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Login</title>
 </head>
 <body>
 
    <jsp:include page="include/_header.jsp"></jsp:include>
    <jsp:include page="include/_menuUnlogin.jsp"></jsp:include>
 
    <h3>Login Page</h3>
 
    <p style="color: red;">${errorString}</p>
 
    <form method="POST" action="doLogin">
       <table border="0">
          <tr>
             <td>User Name</td>
             <td><input type="text" name="userName" value= "${user.m_usernameC}" /> </td>
          </tr>
          <tr>
             <td>Password</td>
             <td><input type="password" name="password" value= "${user.m_passwordC}" /> </td>
          </tr>
          <tr>
             <td>Remember me</td>
             <td><input type="checkbox" name="rememberMe" value= "Y" /> </td>
          </tr>
          <tr>
             <td colspan ="2">
                <input type="submit" value= "Submit" />
                <a href="${pageContext.request.contextPath}/">Cancel</a>
             </td>
          </tr>
       </table>
    </form>
 
    <p style="color:blue;">UserName/Password: admin/1 or employee/1 or cus/1</p>
 
    <jsp:include page="include/_footer.jsp"></jsp:include>
 
 </body>
</html>