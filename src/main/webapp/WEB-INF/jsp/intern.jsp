<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Internships</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
    body{
        background-image: linear-gradient(to right top, #f2e1f1, #f0e1ef, #ede1ed, #ebe0eb, #e9e0e9);
        font-family: 'Josefin Sans', sans-serif;
        width:100%;
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
        <a class="navbar-brand" href="#">Inplant Training / Internships</a>
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
    <a class="navbar-brand text-white" href="#">Inplant Training / Internships </a>

    <!-- Collapse button -->
    <button class="navbar-toggler text-white toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
    aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i
        class="fas fa-bars fa-1x"></i></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
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

    
    <!-- Grid row -->
    <div class="container">
        
            <div class="row content pt-4 justify-content-center">

                <div class="col-lg-12 col-md-12 col-sm-12 py-5 px-2 text-center">
                    <a data-toggle="modal" data-target="#addIntern">
                        <h5>Add New</h2>  
                        <img src="img/new.png" height="100px" width="100px" >
                    </a>
                    <hr class="pb-5">
                </div>
                
              

                
                <c:forEach var="intern" items="${internships}" varStatus="i">



                <div class="col-lg-6 col-md-12 col-sm-12 py-4 px-2">
    
                        <!--Panel-->
                        <div class="card">
                          <h3 class="card-header unique-color-dark lighten-1 white-text  font-weight-bold text-center py-3">${intern.company }
                           
                            <a href="#" class="delete px-2 float-right" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash pink-text" style="font-size:20px"></i></a>
                            <a href="#"class="edit px-2 float-right" data-toggle="modal" data-target="#editModal"><i class="fa fa-edit text-success" style="font-size:20px"></i>  </a>
                            <input type="hidden" id="id" value="${intern.id}">
                          </h3>
                          
                          <div class="card-body unique-color-dark">
                           
                            <ul class="list-group">
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Location : </b> ${intern.location }
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Duration : </b> ${intern.duration }
                                
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>In Semester : </b> ${intern.sem }
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Month : </b> ${intern.month }
                                
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Year : </b> ${intern.year }
                                
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient" >
                                 
                                <c:choose>
							    <c:when test="${intern.certificate.length() < 3 }">
							         <label class="text-danger">FILE NOT UPLOADED</label>
							        
							    </c:when>    
							    <c:otherwise>
							        <label class="text-success">FILE UPLOADED</label>
							         
							    </c:otherwise>
					</c:choose>
                                
                              </li>
                            </ul>
                           
                          </div>
                        </div>
                        <!--/.Panel-->
                    
                 </div>
                 </c:forEach>
    




    
                    
    
            </div>






   

       

        


		
		


        <div class="modal fade" id="addIntern" tabindex="-1" role="dialog" aria-labelledby="addIntern" aria-hidden="true">
            <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">
    
            <div class="modal-content">
    
                <div class="modal-header">
                <img src="https://cdn.nohat.cc/thumb/f/720/0cf27a39a24d4affae51.jpg" alt="avatar" class="rounded-circle img-responsive">
                </div>
                
                <div class="modal-body text-center mb-1 pink-text">
    
                <h5 class="mt-1 mb-2">ADD INPLANT / INTERN</h5>
    
                <form action="/interns/add" method="POST" enctype="multipart/form-data">
    
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="company" name="company" required class="form-control ml-0">
                    <label for="company" class="ml-0">Intern / Inplant Company</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="location" name="location" required class="form-control ml-0">
                    <label for="location" class="ml-0 ">Location</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="duration" name="duration" required class="form-control ml-0">
                    <label for="duration" class="ml-0 ">Duration</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <input type="number" id="sem" name="sem" required class="form-control ml-0">
                    <label for="sem" class="ml-0">In Semester</label>
                </div> 
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="month" name="month" required class="form-control ml-0">
                    <label for="month" class="ml-0">Month</label>
                </div> 
                <div class="md-form ml-0 mr-0">
                    <input type="number" id="yr" name="yr" required class="form-control ml-0">
                    <label for="yr" class="ml-0">Year</label>
                </div>
                 <div class="md-form ml-0 mr-0">
                    <input type="number" id="yr" name="yr" required class="form-control ml-0">
                    <label for="yr" class="ml-0">Year</label>
                </div>  
               
                <label class="ml-0">Upload Certificate If any ( Max 1 MB )</label>
                
                 <div class="md-form ml-0 mr-0">
                    <input type="file" id="imgg" name="imgg" class="form-control ml-0">
                    
                </div>  
    
                <div class="text-center mt-4">
                    <button class="btn btn-pink mt-1">Submit<i class="fas fa-sign-in ml-1"></i></button>
                </div>
    
               </form>
    
                </div>
    
            </div>
           
            </div>
        </div>



        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModal" aria-hidden="true">
                <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">
        
                <div class="modal-content">
        
                    <div class="modal-header">
                    <img src="https://cdn.nohat.cc/thumb/f/720/0cf27a39a24d4affae51.jpg" alt="avatar" class="rounded-circle img-responsive">
                    </div>
                    
                    <div class="modal-body text-center mb-1 pink-text">
        
                    <h5 class="mt-1 mb-2">EDIT CONTENT</h5>
        
                    <form action="/interns/update" method="POST" enctype="multipart/form-data">
        
                    <div class="md-form ml-0 mr-0">
	                    <input type="text" id="company" name="company" required value="xyz" class="form-control ml-0">
	                    <label for="company" class="ml-0">Intern / Inplant Company</label>
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="location" name="location" required value="xyz" class="form-control ml-0">
	                    <label for="location" class="ml-0 ">Location</label>
	                </div>
	                <input type="hidden" id="id" name="id" value="">
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="duration" name="duration" required value="xyz" class="form-control ml-0">
	                    <label for="duration" class="ml-0 ">Duration</label>
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="number" id="sem" name="sem" value=0  required class="form-control ml-0">
	                    <label for="sem" class="ml-0">In Semester</label>
	                </div> 
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="month" name="month" value="xyz" required class="form-control ml-0">
	                    <label for="month" class="ml-0">Month</label>
	                </div> 
	                <div class="md-form ml-0 mr-0">
	                    <input type="number" id="yr" name="yr" value=0 required class="form-control ml-0">
	                    <label for="yr" class="ml-0">Year</label>
	                </div>
	                
	                <label class="ml-0">Update Certificate If required ( MAX 1 MB )</label>
	                
	                <div class="md-form ml-0 mr-0">
	                    <input type="file" id="imgg" name="imgg"  class="form-control ml-0">
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="hidden" id="cert" name="cert" class="form-control ml-0">
	                </div> 
	                 <label id="existing" class="text-center pink-text"></label> 
	    		
                <div class="text-center mt-4">
                    <button class="btn btn-pink mt-1">Update<i class="fas fa-sign-in ml-1"></i></button>
                </div>
    
                   </form>
        
                    </div>
        
                </div>
               
                </div>
        </div>


        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
                    <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">
            
                    <div class="modal-content">
            
                        <div class="modal-header">
                        <img src="https://cdn.nohat.cc/thumb/f/720/0cf27a39a24d4affae51.jpg" alt="avatar" class="rounded-circle img-responsive">
                        </div>
                        
                        <div class="modal-body text-center mb-1">
            
                        <h5 class="mt-1 mb-2 pink-text">DELETE CONTENT ? </h5>
                        <p>This action cannot be undone...!!!!</p>
                        <form action="/interns/delete" method="POST" enctype="multipart/form-data">
                        <div class="text-center mt-4">
                            <input type="hidden" id="del_id" name="id">
                            <button type="button" class="btn btn-purple mt-1" data-dismiss="modal">Cancel </button>
                            <button type="submit" class="btn btn-pink mt-1">Delete</button>
                        </div>
                       </form>
            
                        </div>
            
                    </div>
                   
                    </div>
        </div>
               
    
    
    
    
    
    </div>
  <!-- Grid row -->




















	<script type="text/javascript" src="js/intern.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
   <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

  
</body>
</html>