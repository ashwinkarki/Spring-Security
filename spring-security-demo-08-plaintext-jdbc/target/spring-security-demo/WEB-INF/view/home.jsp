<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>  
<html>

<head>
	<title>luv2code Company Home Page qqaa</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!

	
	<!-- dispaly username ans roles -->
	<p>
	User: <security:authentication property="principal.username" />
	<br/>
	role:  <security:authentication property="principal.authorities" />
	</p>
 
 
    <!-- Add a link to /leaders (only for managers) -->
     <!-- only displayed for manager -->
    <security:authorize access="hasRole('MANAGER')">
    <p>
    <a href="${pageContext.request.contextPath}/leaders">Leadership meetings(Only for Manager)</a>
    </p>
    </security:authorize>
    
    <!-- Add a link to /leaders (only for admins) -->
    <!-- only displayed for admin -->
    <security:authorize access="hasRole('ADMIN')"> 
    <p>
    <a href="${pageContext.request.contextPath}/systems">Systems meetings(Only for Admin)</a>
    </p>
    </security:authorize>

   <!-- add a logout button -->
   <form:form action="${pageContext.request.contextPath}/logout" method="POST">
   
   <input  type="submit" value="Logout">
   
   </form:form>

</body>

</html>