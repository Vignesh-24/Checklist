<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web-animations/2.2.2/web-animations.min.js"></script>
   
    <style>

        
        
html,body,header,
.view {
  height:100%;
}
body{
    font-family: 'Josefin Sans', sans-serif;
}
@media (max-width: 600px) {
  html,
  body,
  header,
  .view {
    height: 110%;
  }
}
@media (min-width: 600px) and (max-width: 1000px) {
  html,
  body,
  header,
  .view {
    height: 115%;
  }
}



.rgba-gradient {
  background: -webkit-linear-gradient(45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.5) 100%);
  background: -webkit-gradient(linear, 45deg, from(rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.5) 100%));
  background: linear-gradient(to 45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.5) 100%);
}

.card {
  background-color: rgba(126, 123, 215, 0.2);
}

.md-form label {
  color: #ffffff;
}

h6 {
  line-height: 1.7;
}

    </style>
</head>
<body>
    <script>
     new WOW().init();
    </script>


    <header>
   
        <!-- Full Page Intro -->
        <div class="view" style="background-image: url(img/placemnt.jpg); background-repeat: no-repeat; background-size: cover; background-position: center center;">
          <!-- Mask & flexbox options-->
          <div class="mask rgba-gradient align-items-center">
            <!-- Content -->
            <div class="container">
              <!--Grid row-->
              <div class="row mt-5">
              
              <c:if test="${info != null}">
				<div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
						${info} 
			  		 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
   						 
    				<span aria-hidden="true">&times;</span>
  					</button>
	  			</div>
	
			</c:if>
                <!--Grid column-->
                
                <!--Grid column-->
                <!--Grid column-->
                <div class="col-md-12 col-xl-12 mb-4">
                  <!--Form-->
                  <form:form action="/app/checklist/adminuser/addStaff" modelAttribute="addStaff" method="post" >
            
                  <div class="card wow fadeInRight" data-wow-delay="0.2s">
                    <div class="card-body">
                      <!--Header-->
                      <div class="text-center">
                       
        
                        <h3 class="white-text">
                          <i class="fas fa-user white-text"></i> Staff Registration</h3>
                        <hr class="hr-light">
                      </div>
                      <!--Body-->
                      <div class="row py-2">
                            <div class="col-lg-4 pr-3">
                                <div class="md-form">
                                    <i class="fas fa-user prefix white-text active"></i>
                                    <form:input type="text"  path="user.name" required="required" class="white-text form-control"/>
                                    <label for="name" class="active">Full name</label>
                                </div> 
                            </div>
                            <div class="col-lg-4 pr-3">
                                <div class="md-form">
                                    <i class="fas fa-user prefix white-text active"></i>
                                    <form:input type="text" path="user.identity" id="rollno" required="required" class="white-text form-control"/>
                                    <label for="rollno" class="active">User ID (Roll No)</label>
                                </div> 
                            </div>
                            <div class="col-lg-4 pr-3">
                                <div class="md-form">
                                    <i class="fas fa-envelope prefix white-text active"></i>
                                    <form:input type="email" path="user.email" id="email" required="required" class="white-text form-control"/>
                                    <label for="email" class="active">Email ID</label>
                                </div>
                            </div>
                      </div>


						


                      <div class="row py-2">
	                        <div class="col-lg-3">
	                            <div class="md-form">        
                            <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" required="required" path="designation">
                                  <form:option value="" selected="true" disabled="true"> Select Designation</form:option>
                                  <form:option value="Professor">Professor</form:option>
                                  <form:option value="Associate Professor">Associate Professor</form:option>
                                  <form:option value="Assistant Professor">Assistant Professor</form:option>
                                 </form:select>
                              </div>
                           
                        </div>
	                        </div>
	                        
	                    
	                        <div class="col-lg-3">
	                             <div class="md-form">
		                            <i class="fas fa-lock prefix white-text active"></i>
		                            <form:input type="password" path="user.password" id="passwd" required="required" class="white-text form-control"/>
		                            <label for="passwd" class="active">Password</label>
	                             </div>
	                        </div>
	                        
	                        <div class="col-lg-3">
                       		 <div class="md-form">        
                            <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" path="user.gender">
                                  <form:option value="" selected="true" disabled="true"> Select Gender</form:option>
                                  <form:option value="Male">Male</form:option>
                                  <form:option value="Female">Female</form:option>
                                  <form:option value="Others">Others</form:option>
                                 </form:select>
                              </div>
                           
                        </div> 
                    </div>
                     </div>
 


           
                      
                      <div class="text-center mt-4">
                        <button type="submit" class="btn btn-indigo">Sign up</button>
                        <hr class="hr-light mb-3 mt-4">
                      </div>
                    </div>
                  </div>
                  <!--/.Form-->
                  </form:form>
                </div>
                <!--Grid column-->
              </div>
              <!--Grid row-->
            </div>
            <!-- Content -->
          </div>
          <!-- Mask & flexbox options-->
        </div>
        <!-- Full Page Intro -->
      </header>
      <!-- Main navigation -->
      <!--Main Layout-->
      

      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <!-- Bootstrap tooltips -->
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
      <!-- Bootstrap core JavaScript -->
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
      <!-- MDB core JavaScript -->
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
  
</body>
</html>