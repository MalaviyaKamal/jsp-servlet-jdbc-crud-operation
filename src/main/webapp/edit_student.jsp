<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
     <%@page import="com.dao.StudentDAO" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="com.conn.DBConnect" %>
       <%@page import="com.entity.Student" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css.jsp" %>
</head>
<body class="bg-light">
<%@include file="navbar.jsp" %>
<div class="container p-3">
      <div class="row">
         <div class="col-md-6 offset-md-3">
             <div class="card">
                 <div class="card-body">
                 <p class="fs-3 text-center">Edit Student</p>
                
          <%
    int id = Integer.parseInt(request.getParameter("id"));
    StudentDAO dao = new StudentDAO(DBConnect.getconn());
    Student s = dao.getStudentById(id);
        %>
     <form action="update" method="post">
  <div class="mb-3">
    <label class="form-label">Full Name</label>
    <input type="text" name="name" value="<%=s.getFullName()%>" class="form-control"  >
  </div>
  <div class="mb-3">
   <label class="form-label">Date of Birth</label>
    <input type="date" name="dob" value="<%=s.getDob()%>" class="form-control" >
  </div>
  <div class="mb-3">
   <label class="form-label">Address</label>
    <input type="text" name="address" value="<%=s.getAddress()%>" class="form-control" >
  </div>
  <div class="mb-3">
   <label class="form-label">Qualification</label>
<input type="text" name="qualification" value="<%=s.getQualification()%>" class="form-control">
  </div>
  <div class="mb-3">
   <label class="form-label">email</label>
    <input type="email" name="email" value="<%=s.getEmail()%>" class="form-control" >
    
  </div>
  <input hidden="hidden" name="id" value="<%=s.getId()%>">
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
                </div> 
             </div> 
       </div> 
     </div> 
</div>
</body>
</html>