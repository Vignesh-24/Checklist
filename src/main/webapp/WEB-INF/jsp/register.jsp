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
  height:113%;
}
body{
    font-family: 'Josefin Sans', sans-serif;
}
@media (max-width: 900px) {
  html,
  body,
  header,
  .view {
    height: 140%;
  }
}
@media (min-width: 900px) and (max-width: 1300px) {
  html,
  body,
  header,
  .view {
    height: 130%;
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
                  <form:form action="/add" modelAttribute="adduser" method="post" enctype="multipart/form-data">
            
                  <div class="card wow fadeInRight" data-wow-delay="0.2s">
                    <div class="card-body">
                      <!--Header-->
                      <div class="text-center">
                       
        
                        <h3 class="white-text">
                          <i class="fas fa-user white-text"></i> Register</h3>
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
                                    <i class="fas fa-id-card prefix white-text active"></i>
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
                                <form:select class="form-control bg-dark text-white" path="degree">
                                  <form:option value="selected" disabled="true" selected="true"> Select degree</form:option>
                                  <form:option value="BE">BE</form:option>
                                  <form:option value="BTECH">B.TECH</form:option>
                                  <form:option value="MBA">MBA</form:option>
                                  <form:option value="M.E">ME</form:option>
                                  <form:option value="MTECH">M.TECH</form:option>
                                 </form:select>
                              </div>
                            </div> 
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                               <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" path="branch">
                                  <form:option value="selected" disabled="true" selected="true"> Select Branch</form:option>
                                  <form:option value="CSE">CSE</form:option>
                                  <form:option value="ECE">ECE</form:option>
                                  <form:option value="EEE">EEE</form:option>
                                  <form:option value="MECH">MECH</form:option>
                                  <form:option value="IT">IT</form:option>
                                  <form:option value="BIO">BIOTECH</form:option>
                                  <form:option value="CHEM">CHEMICAL</form:option>
                                  <form:option value="EI">E&I</form:option>
                                  <form:option value="CIVIL">CIVIL</form:option>
                                   <form:option value="ICE">ICE</form:option>
                                 </form:select>
                              </div>
                            </div> 
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                               <i class="fas fa-users prefix white-text active"></i>
                                <form:input type="text" path="section" id="section" required="required" class="white-text form-control"/>
                                <label for="section" class="px-2 active">Section ( A / B / C)</label>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                                <i class="fas fa-calendar-check prefix white-text active"></i>
                                <form:input type="number" path="YOP" id="pass" onClick="this.select();" value="2021" required="required" class="white-text form-control"/>
                                <label for="pass" class="active">Year Of Passing</label>
                            </div>
                        </div>
                  </div>



                  <div class="row py-2">
                    <div class="col-lg-3">
                        <div class="md-form">
                         	<i class="fas fa-phone prefix white-text active"></i>
                            <form:input type="number" path="mobile" id="mob" required="required" class="white-text form-control"/>
                            <label for="mob" class="active">Mobile Number</label>
                        </div>
                        
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">        
                            <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" path="user.gender">
                                  <form:option value="selected" disabled="true" selected="true"> Select Gender</form:option>
                                  <form:option value="Male">Male</form:option>
                                  <form:option value="Female">Female</form:option>
                                  <form:option value="Others">Others</form:option>
                                 </form:select>
                              </div>
                           
                        </div> 
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">
                            <i class="fas fa-birthday-cake prefix white-text active"></i>
                            <form:input type="date" path="DOB" id="DOB" required="required" class="white-text form-control"/>
                            <label for="DOB" class="px-2 active">Date Of Birth</label>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">
                            <i class="fas fa-lock prefix white-text active"></i>
                            <form:input type="password" path="user.password" id="passwd" required="required" class="white-text form-control"/>
                            <label for="passwd" class="active">Password</label>
                        </div>
                    </div>
              </div>
              <div class="row px-2">
              <p class="text-white">If Not Applicable, type NIL in the following fields</p>
              </div>
              
               <div class="row pb-2">
               
               		<div class="col-lg-3">
               			 <div class="md-form">
		                    <form:input type="text" id="inputLGEx"  path="passport" required="required" class="form-control white-text"  />
		                    <label for="inputLGEx" class="active"> Passport Number </label>
	                     </div>
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form ">
		                    <form:input type="text" id="inputLGEx1" path="pan" required="required"  class="form-control white-text" />
		                    <label for="inputLGEx1" class="active"> PAN Number</label>
	                   </div>
               		
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form">
		                    <form:input type="text" id="inputLGEx2" path="aadhaar"  required="required" class="form-control white-text" />
                    		<label for="inputLGEx2" class="active"> Aaadhaar Number </label>
	                   </div>
               		
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form ">
		                    <form:input type="text" id="inputLGEx3" path="membership" required="required" class="form-control white-text" />
                    		<label for="inputLGEx3" class="active">Professional Membership</label>
	                   </div>
               		
               		</div>

               </div>
               
               
               <div class="row">
               		<div class="col-lg-6">
               			<div class="md-form">
               
                    	<div class="form-group">
	                        
	                        <form:select class="form-control unique-color-dark text-white"  path="career" id="abc">
	                          <form:option value="selected"> Select Career Aspirations</form:option>
	                          <form:option value="Jobs in IT companies">Jobs in IT companies</form:option>
	                          <form:option value="Jobs in Core / Product companies">Jobs in Core / Product companies </form:option>
	                          <form:option value="Higher Studies in Abroad(Preparing GRE,TOEFL,IELTS etc)"> Higher Studies in Abroad (Preparing GRE,TOEFL,IELTS,etc)
		                        </form:option>
		                        <form:option value="Higher Studies in IIT / IIM (Preparing GATE / CAT)">Higher Studies in IIT / IIM (Preparing GATE / CAT)</form:option>
		                        <form:option value="Civil service Examinations (IAS, IPS etc)">Civil service Examinations (IAS, IPS etc)</form:option>
		                        <form:option value="Defense related jobs (Navy, Airforce & Army)"> Defense related jobs (Navy, Airforce & Army)
		                        </form:option>
		                        <form:option value=" Self Employment"> Self Employment</form:option>
		                          <form:option value="Others">Others</form:option>
		                        </form:select>
                      	</div>
                   
                     </div> 
               		</div>
               		<div class="col-lg-6">
               		
	               		 <div class="md-form ">
	                    <form:input type="text" id="inputLGEx4" path="goal" required="required" class="form-control white-text" />
	                    <label for="inputLGEx4" class="active">Contribution to achieve goal</label>
	                  </div>
               		
               		</div>
               
               
               </div>
               
               
               
                <div class="md-form">
                   
                    <form:input type="text" path="address" id="addr" class="white-text form-control"/>
                    <label for="addr" class="active pb-2">Your Address ( Max 60 Characters )</label>
                  </div>
                  <label class="text-white" class="active">Upload Photo (Max size 1MB)</label>
                  <div class="input-group bg-dark">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupFileAddon01">(Format : jpg/png )</span>
                    </div>
                    <div class="custom-file">
                      <input type="file" name="imgg" required="required" class="custom-file-input" id="inputGroupFile01"
                        aria-describedby="inputGroupFileAddon01">
                      <label class="custom-file-label" for="inputGroupFile01" class="purple-text">Choose file( less than 1 MB)</label>
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