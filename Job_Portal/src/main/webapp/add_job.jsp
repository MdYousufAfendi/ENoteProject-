<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Job Page</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
 <%@include file="all_component/navbar.jsp" %>
 
 <div class="continer p-2">
         <div class="col-md-10 offset-md-1">
             <div class="card">
                 <div class="card-body">
                     <div class="text-center">
                         <i class="fas fa-user-friends fa-3x">
                         </i>
                         <h5>Add Job</h5>
                     </div>
                     <c:if test="${not empty succMsg }">
                         <h4 class="text-center text-danger"></h4>
                         <c:remove var="succMsg"/>
                         </c:if>
                         <form action="add_job" method="post">
                         <div class="form-group">
                             <label>Enter Title</label> <input type="text" name="title"
                                    required class="form-control">
                         </div>
                         <div class="form-row">
                            <div class="form-group col-md-4">
                             <label>Location</label> <select name="location"
                             class="custom-select " id="inlineFormCustomSelectPref">
                             <option selected>Choose...</option>
                             <option value="Dhaka">Dhaka</option>
                             <option value="Rajshahi">Rajshahi</option>
                             <option value="Chittagonj">Chittagonj</option>
                             <option value="Khulna">Khulna</option>
                             <option value="Mymensingh">Mymensingh</option>
                             <option value="Rangpur">Rangpur</option>
                             <option value="Sylhet">Sylhet</option>
                             <option value="Barisal">Barisal</option>
                             </select>
                              </div>
                              
                              <div class="form-group col-md-4">
                                 <label>Category</label> <select class="custom-select "
                                     id="inlineFormCustomPerd" name="category">
                                     <option selected>Choose...</option>
                                     <option value="IT">IT</option>
                                     <option value="Banking">Banking</option>
                                     <option value="Marketing">Marketing</option>
                                     <option value="Teacher">Teacher</option>
                                     <option value="Developer">Developer</option>
                                     <option value="Engineer">Engineer</option>
                                     <option value="Maneger">Maneger</option>
                                     </select>
                              </div>
                        
                         <div class="form-group col-md-4">
                             <label>Status</label> <select class="form-control" name="status">
                             <option class="Active" value="Active">Active</option>
                             <option class="Inactive" value="Inactive">Inactive</option>
                             </select>
                         </div>
                          </div>
                          <div class="form-group">
                             <label>Description</label> 
                             <textarea required rows="6" cols="" name="desc"
                                   class="form-control"></textarea>
                         </div>
                         <button type="submit"
                                 class="btn btn-primary badge-pill btn-black">Publish Job
                         </button>
                         </form>
                 </div>
           </div>
         </div>
     </div>
</body>
</html>