<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: View Jobs</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
 <%@include file="all_component/navbar.jsp" %>
  <div class="continer">
      <div class="row">
         <div class="col-md-12">
         
             <h5 class="text-centrt text-primary">All Jobs</h5>
             
              <% 
              JobDAO dao=new JobDAO(DBConnect.getConn());
                       List<Jobs> list=dao.getAllJobs();
                       for(Jobs j:list)
                       {%>
                    	   <div class="card mt-2">
                      <div class="card-body">
                     <div class="text-center text-primary">
                         <i class="far fa-clipboard fa-2x">
                         </i>
                         </div>
                         
                         
                      
                         
                         
                         <h6><%=j.getTitle() %></h6>
                         <p><%=j.getDescription() %></p>
                         <br>
                         <div class="form-row">
                              <div class="form-group col-md-3">
                                   <input type="text" class="form-control form-contorl-sm"
                                         value="Location:<%=j.getLocation() %>" readonly>
                              </div>
                              <div class="form-group col-md-3">
                                   <input type="text" class="form-control form-contorl-sm"
                                         value="Category:<%=j.getCategory() %>" readonly>
                              </div>
                              <div class="form-group col-md-3">
                                   <input type="text" class="form-control form-contorl-sm"
                                         value="Status:<%=j.getStatus() %>" readonly>
                              </div>
                         </div>
                         <h6>Publish Date:2021-10-31</h6>
                         <div class="text-center">
                              <a href="#" class="btn btn-sm bg-success text-white">Edit</a>
                              <a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
                         </div>
                         </div>
                         </div>
                       <%}
                       %>
             
                 
           </div>
         </div>
     </div>
</body>
</html>