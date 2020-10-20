<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkillSet</title>
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
        <a class="navbar-brand" href="#">Manage Skills</a>
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
    <a class="navbar-brand text-white" href="#">Manage Skills</a>

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
<!--/.Navbar-->


    <!-- Grid row -->
    <div class="container pt-5">

        <div class="row addnew py-3">
            <div class="col-lg-12">
                <button class="btn btn-md btn-purple float-right" data-toggle="modal" data-target="#addSkill">Add New SKill</button>
            </div>
           
        </div>


        <div class="row content">
            <div class="col-lg-12">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item  unique-color-dark  list-group-item-action flex-column align-items-start">
                        <div class="d-flex unique-color-dark w-100 justify-content-center">
                            <h5 class="mb-1 white-text">Programming Skills</h5>
                          </div>
                    </li>
                     <c:forEach var="skill" items="${skills}" varStatus="i">
                    <li class="list-group-item frozen-dreams-gradient list-group-item-action flex-column align-items-start">
                       
                      <div class="d-flex">
                        <div class="mr-auto"> <h5 class="mb-1 font-weight-bold">${skill.details }</h5></div>
                        <div class="px-2"> <a href="#"class="edit" data-toggle="modal" data-target="#editModal"><i class="fa fa-edit purple-text" style="font-size:20px"></i>  </a></div>
                        <div class="px-2"><a href="#" class="delete " data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash pink-text" style="font-size:20px"></i></a></div>
                     	<input type="hidden" id="id" value="${skill.id}">
                      </div>
                      <p class="my-1">Certification Partner : ${skill.trainer} </p>
                      <p class="my-1">Duration : ${skill.duration } </p>
                      <p class="my-1">Month : ${skill.month } </p>
                      <p class="my-1">Semester : ${skill.sem } </p>
                      <p class="my-1">Year : ${skill.year }</p>
                       
                      <c:choose>
							    <c:when test="${skill.certificate.length() < 3 }">
							         <label class="text-danger py-1">FILE NOT UPLOADED</label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-success py-1">FILE UPLOADED</label>
							    </c:otherwise>
					</c:choose>
                      
                    </li>
                    </c:forEach>
              
                    
                </ul>
    

            </div>
            


        </div>

        





        <div class="modal fade" id="addSkill" tabindex="-1" role="dialog" aria-labelledby="addSkill" aria-hidden="true">
            <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">
    
            <div class="modal-content">
    
                <div class="modal-header">
                <img src="https://cdn.nohat.cc/thumb/f/720/0cf27a39a24d4affae51.jpg" alt="avatar" class="rounded-circle img-responsive">
                </div>
                
                <div class="modal-body text-center mb-1 pink-text">
    
                <h5 class="mt-1 mb-2">ADD SKILL</h5>
    
                <form action="/skills/add" method="POST" enctype="multipart/form-data">
    
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="detail" name="details" required class="form-control ml-0">
                    <label for="detail" class="ml-0 ">Programming Language</label>
                </div>
                 <div class="md-form ml-0 mr-0">
                    <input type="text" id="train" name="trainer" required class="form-control ml-0">
                    <label for="train" class="ml-0 ">Trainer / Certification By</label>
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
    			
    			<label class="ml-0">Upload Certificate If any ( MAX 1 MB )</label>
                
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
        
                    <h5 class="mt-1 mb-2">EDIT SKILL</h5>
        
                    <form action="/skills/update" method="POST" enctype="multipart/form-data">
        
                    <div class="md-form ml-0 mr-0">
	                    <input type="text" id="details" value="xyz" required name="details" class="form-control ml-0">
	                    <label for="details" class="ml-0 ">Course/ Workshop Details</label>
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="train" name="trainer" required value="xyz" class="form-control ml-0">
	                    <label for="train" class="ml-0 ">Trainer/ Certification By</label>
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="duration" name="duration" required value="xyz" class="form-control ml-0">
	                    <label for="duration" class="ml-0 ">Duration</label>
	                </div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="sems" name="sem" value=0 required class="form-control ml-0">
	                    <label for="sems" class="ml-0">In Semester</label>
	                </div> 
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="months" value="xyz" name="month" required class="form-control ml-0">
	                    <label for="months" class="ml-0">Month</label>
	                </div> 
	                <div class="md-form ml-0 mr-0">
                    	<input type="hidden" id="id" name="id" class="form-control ml-0">
                	</div>
	                <div class="md-form ml-0 mr-0">
	                    <input type="text" id="yrs" name="yr" required value=0 class="form-control ml-0">
	                    <label for="yrs" class="ml-0">Year</label>
	                </div>  
	    			
	    			<label class="ml-0">Update Certificate if required ( MAX 1 MB )</label>
	                
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
            
                        <h5 class="mt-1 mb-2 pink-text">DELETE SKILL ? </h5>
                        <p>This action cannot be undone...!!!!</p>
                        <form action="/skills/delete" method="POST">
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


















	<script type="text/javascript" src="js/skill.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
   <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>



    
</body>
</html>