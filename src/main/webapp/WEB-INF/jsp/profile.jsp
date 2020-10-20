<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
</head>
<style>

    body{
        background-image: linear-gradient(to right top, #f2e1f1, #f0e1ef, #ede1ed, #ebe0eb, #e9e0e9);
        font-family: 'Josefin Sans', sans-serif;
        height:100%;
        
    }

    @media(max-width:767px){
        .large-device {
          display: none;
        }
      }
      @media(min-width:768px){
         .small-device {
          display: none;   
        }
      }
</style>
<body>


    <nav class="large-device navbar navbar-dark unique-color-dark justify-content-between pb-3">
        <a class="navbar-brand" href="#">User Profile</a>
        <form class="form-inline my-1">
          <div class="md-form form-sm my-0 pr-5">
            <a href="/home" class="btn-lg pink-text btn-sm px-2 my-0" type="submit">HOME</a>
          </div>
          <a href="/logout" class="btn btn-md btn-red btn-sm my-0" type="submit">Logout</a>
        </form>
      </nav>


      <!--Navbar-->
     <nav class="small-device navbar navbar-dark unique-color-dark pb-3">

    <!-- Navbar brand -->
    <a class="navbar-brand text-white" href="#">User Profile</a>
  
    <!-- Collapse button -->
    <button class="navbar-toggler text-white toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
      aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i
          class="fas fa-bars fa-1x"></i></span></button>
  
    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
  
      <!-- Links -->
      <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
          <a class="nav-link pink-text pl-2" href="/home">Home</a>
        </li>
        <li class="nav-item pt-2">
          <a class="btn btn-md btn-red btn-sm my-0" href="/logout">Logout</a>
        </li>
      </ul>
      <!-- Links -->
  
    </div>
    <!-- Collapsible content -->
  
    </nav>


    <div class="container pt-5">
        <a class="text-dark float-right" data-toggle="modal" data-target="#editModal"><i class="fa fa-edit text-dark" style="font-size:20px"></i> Edit </a>
        <p class="font-weight-bold h3">Personal Information</p>
       
        <hr>
        <div class="row py-2">
           
            <div class="col-lg-6 col-md-12 col-sm-6">
                <p class="font-weight-bold">Full Name</p><p>${student.user.name}</p>
                <p class="font-weight-bold">User ID</p><p>${student.user.identity}</p>
                <p class="font-weight-bold">Email ID</p><p>${student.user.email}</p>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-6">
                <p class="font-weight-bold">Mobile Number</p><p>${student.mobile}</p>
                <p class="font-weight-bold">Gender</p><p>${student.user.gender}</p>
                <p class="font-weight-bold">Date Of Birth</p><p>${student.DOB}</p>
            </div>
           
        </div>
        
        <div class="row py-2">
       		<div class="col-lg-6 col-md-6 col-sm-6">
                <img src="/result/images/${student.img}"width=40% class="img-fluid py-2">
	            <form action="/upload" method="post" enctype="multipart/form-data" class="form-inline" >
				<input type="file" name="img" required  class="py-1 md-form">
				<input type="submit" value="upload new photo" class="btn btn-md btn-purple">
				</form>
            </div>
           
        </div>
        
 
         <div class="row py-2">
            <div class="col-lg-12">
                <p class="font-weight-bold">LinkedIn ID</p><p>${student.linkedin}</p>
            </div>
        
        </div>
         
        <div class="row py-2">
            <div class="col-lg-12">
                <p class="font-weight-bold">Address</p><p>${student.address}</p>
            </div>
        </div>

        <p class="font-weight-bold h3">Academic Information</p>
        <hr>

        <div class="row py-2">
            <div class="col-lg-6 col-md-6 ">
                <p class="font-weight-bold">Degree</p><p>${student.degree}</p>
                <p class="font-weight-bold">Branch</p><p>${student.branch}</p>
                
            </div>
            <div class="col-lg-6 col-md-6">
                <p class="font-weight-bold">Section</p><p>${student.section}</p>
                <p class="font-weight-bold">Year Of Passing</p><p>${student.YOP}</p>
            </div>
        </div>


        <p class="font-weight-bold h3">Other Information</p>
        <hr>

        <div class="row py-2">
            <div class="col-lg-6 col-md-6">
                <p class="font-weight-bold">Passport Number </p><p>${student.passport}</p>
                <p class="font-weight-bold">PAN Number</p><p>${student.pan}</p>
                <p class="font-weight-bold">Aaadhaar Number</p><p>${student.aadhaar}</p>
                
            </div>

            <div class="col-lg-6 col-md-6">
                <p class="font-weight-bold">Professional Membership </p><p>${student.membership}</p>
                <p class="font-weight-bold">Career Aspiration</p><p>${student.career}</p>
                
                
            </div>
        </div>

        <div class="row py-2">
            <div class="col-lg-12">
                <p class="font-weight-bold">Contribution to achieve goal</p><p>${student.goal}</p>
            </div>
        </div>



    
    
    
    
    
    
    <form:form action="/update" modelAttribute="student" method="post" enctype="multipart/form-data">
    
    <div class="modal fade right" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModal" aria-hidden="true">

  
        <div class="modal-dialog modal-dialog-scrollable modal-full-height modal-bottom" >

                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title w-100" id="myModalLabel">Edit Profile</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <div class="row">
                            <div class="col-lg-4 ">
                                <div class="md-form">
                                    <i class="fas fa-user prefix text-dark active"></i>
                                    <form:input type="text"  path="user.name" required="required" class="text-dark form-control"/>
                                    <label for="name" class="active">Full name</label>
                                </div> 
                            </div>
                           
                            <div class="col-lg-4">
                                <div class="md-form">
                                    <i class="fas fa-envelope prefix text-dark active"></i>
                                    <form:input type="email" path="user.email" id="email" required="required" class="text-dark form-control"/>
                                    <label for="email" class="active">Email ID</label>
                                </div>
                            </div>
                             <div class="col-lg-4">
                                <div class="md-form">
                                    <i class="fas fa-envelope prefix text-dark active"></i>
                                    <form:input type="text" path="linkedin" id="linkn" required="required" class="text-dark form-control"/>
                                    <label for="linkn" class="active">LinkedIn ID</label>
                                </div>
                            </div>
                      </div>


                      <div class="row">
                        <div class="col-lg-3">
                            <div class="md-form">
                               <i class="fas fa-graduation-cap prefix text-dark active"></i>
                                <form:input type="text" id="degree" path="degree" required="required" class="text-dark form-control"/>
                                <label for="degree" class="active">Degree ( B.E / B.TECH)</label>
                            </div> 
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                               <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" path="branch">
                                  <form:option value="selected"> Select Branch</form:option>
                                  <form:option value="CSE">CSE</form:option>
                                  <form:option value="ECE">ECE</form:option>
                                  <form:option value="EEE">EEE</form:option>
                                  <form:option value="MECH">MECH</form:option>
                                  <form:option value="IT">IT</form:option>
                                  <form:option value="BIO">BIOTECH</form:option>
                                  <form:option value="CHEM">CHEMICAL</form:option>
                                  <form:option value="EI">E&I</form:option>
                                  <form:option value="CIVIL">CIVIL</form:option>
                                 </form:select>
                              </div>
                            </div> 
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                               <i class="fas fa-users prefix text-dark active"></i>
                                <form:input type="text" path="section" id="section" required="required" class="text-dark form-control"/>
                                <label for="section" class="px-2 active">Section</label>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="md-form">
                                <i class="fas fa-calendar-check prefix text-dark active"></i>
                                <form:input type="number" path="YOP" id="pass" required="required" class="text-dark form-control"/>
                                <label for="pass" class="active">Year Of Passing</label>
                            </div>
                        </div>
                  </div>




                  <div class="row">
                    <div class="col-lg-3">
                        <div class="md-form">
                         	<i class="fas fa-phone prefix text-dark active"></i>
                            <form:input type="number" path="mobile" id="mob" required="required" class="text-dark form-control"/>
                            <label for="mob" class="active">Mobile Number</label>
                        </div>
                        
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">        
                            <div class="form-group">                                
                                <form:select class="form-control bg-dark text-white" path="user.gender">
                                  <form:option value="selected"> Select Gender</form:option>
                                  <form:option value="Male">Male</form:option>
                                  <form:option value="Female">Female</form:option>
                                  <form:option value="Others">Others</form:option>
                                 </form:select>
                              </div>
                           
                        </div> 
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">
                            <i class="fas fa-birthday-cake prefix text-dark active"></i>
                            <form:input type="date" path="DOB" id="DOB" required="required" class="text-dark form-control"/>
                            <label for="DOB" class="px-2 active">Date Of Birth</label>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="md-form">
                            <i class="fas fa-lock prefix text-dark active"></i>
                            <form:input type="password" path="user.password" id="passwd" required="required" class="text-dark form-control"/>
                            <label for="passwd" class="active">Password</label>
                        </div>
                    </div>
              </div>
              
              <div class="row">
               
               		<div class="col-lg-3">
               			 <div class="md-form">
		                    <form:input type="text" id="inputLGEx"  path="passport" required="required" class="form-control text-dark" />
		                    <label for="inputLGEx" class="active">Passport Number</label>
	                     </div>
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form ">
		                    <form:input type="text" id="inputLGEx1" path="pan" required="required" class="form-control text-dark" />
		                    <label for="inputLGEx1" class="active">PAN Number</label>
	                   </div>
               		
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form">
		                    <form:input type="text" id="inputLGEx2" path="aadhaar" required="required" class="form-control text-dark" />
                    		<label for="inputLGEx2" class="active">Aaadhaar Number </label>
	                   </div>
               		
               		</div>
               		
               		<div class="col-lg-3">
	               		<div class="md-form ">
		                    <form:input type="text" id="inputLGEx3" path="membership" required="required" class="form-control text-dark" />
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
	                          <form:option value="Higher Studies in Abroad (Preparing GRE, TOEFL, IELTS etc)"> Higher Studies in Abroad (Preparing GRE, TOEFL, IELTS etc)
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
	                    <form:input type="text" id="inputLGEx4" path="goal" required="required" class="form-control" />
	                    <label for="inputLGEx4" class="active">Contribution to achieve goal</label>
	                  </div>
               		
               		</div>
               
               
               </div>
				<form:input type="hidden" path="img"/>
              <div class="row">
                  <div class="col-lg-8">
                    <div class="md-form">
                        <form:input type="text" path="address" id="addr" class="text-dark form-control"/>
                    	<label for="addr" class="active">Your Address ( Max 60 Characters )</label>
                      </div>
                      
                  </div>
                  
                
              </div>
        
                

               
                        








                        
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                    </div>
        </div>
    </div>
    </form:form>
    
    
    
    
    
    
    
    
    
    
    
    
    
    </div>







    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
     <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
      <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
    
</body>
</html>