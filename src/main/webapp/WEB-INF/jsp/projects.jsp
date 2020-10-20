<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects</title>
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
            <a class="navbar-brand" href="#">Manage Projects</a>
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
        <a class="navbar-brand text-white" href="#">Manage Projects</a>
    
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
    <!--/.Navbar-->

   

    <div class="container py-5">

        <div class="addnew">
            <button class="btn btn-md btn-purple float-right" data-toggle="modal" data-target="#addProject">Add New Project</button>
        </div>

        
        <div class="table-responsive pt-5">

            <table class="table table-striped">
                <thead class="black white-text">
                  <tr>
                    <th scope="col">Sl no</th>
                    <th scope="col">Project Details</th>
                    <th scope="col">In Semester</th>
                    <th scope="col">Month</th>
                    <th scope="col">Year</th>
                    <th scope="col">File Uploaded</th>
                    <th scope="col">Action</th>
    
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="project" items="${projects}" varStatus="i">
                  <tr>
                    <th scope="row">${i.index + 1}</th>
                    <td>${project.pro_detail } </td>
                    <td>${project.sem } </td>
                    <td>${project.month} </td>
                    <td>${project.year} </td>
                    <td>
                    
                    <c:choose>
							    <c:when test="${project.certificate.length() < 3 }">
							         <label class="text-danger">NO</label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-success">YES</label>
							    </c:otherwise>
					</c:choose>
                    
                    
                    </td>
                    <td>
                        <a href="#"class="edit px-2 py-2" data-toggle="modal" data-target="#editModal"><i class="fa fa-edit purple-text" style="font-size:20px"></i>  </a>
                        <a href="#" class="delete px-2 py-2" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash pink-text" style="font-size:20px"></i></a>
                        <input type="hidden" id="id" value="${project.id}">
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
        </div>



        
        <div class="modal fade" id="addProject" tabindex="-1" role="dialog" aria-labelledby="addProject" aria-hidden="true">
        <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">

        <div class="modal-content">

            <div class="modal-header">
            <img src="img/pro.jpg" alt="avatar" class="rounded-circle img-responsive">
            </div>
            
            <div class="modal-body text-center mb-1 pink-text">

            <h5 class="mt-1 mb-2">ADD PROJECT</h5>

            <form action="/projects/add" method="POST" enctype="multipart/form-data">

            <div class="md-form ml-0 mr-0">
                <input type="text" id="detail" name="details" required class="form-control ml-0">
                <label for="detail" class="ml-0 ">Project Details</label>
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
			
			
			<label class="ml-0">Upload Certificate if any ( Max 1 MB )</label>
                
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
                <img src="img/pro.jpg" alt="avatar" class="rounded-circle img-responsive">
                </div>
                
                <div class="modal-body text-center mb-1 pink-text">
    
                <h5 class="mt-1 mb-2">EDIT PROJECT</h5>
    
                <form action="/projects/update" method="POST" enctype="multipart/form-data">
    
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="details" name="details" required value="xyz" class="form-control ml-0">
                    <label for="details" class="ml-0 ">Project Details</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <input type="hidden" id="id" name="id" class="form-control ml-0">
                   
                </div>
                <div class="md-form ml-0 mr-0">
                    <input type="number" id="sems" name="sem" required value=0 class="form-control ml-0">
                    <label for="sems" class="ml-0">In Semester</label>
                </div> 
                <div class="md-form ml-0 mr-0">
                    <input type="text" id="months" name="month" required value="xyz" class="form-control ml-0">
                    <label for="months" class="ml-0">Month</label>
                </div> 
                <div class="md-form ml-0 mr-0">
                    <input type="number" id="yrs" name="yr" required value=0 class="form-control ml-0">
                    <label for="yrs" class="ml-0">Year</label>
                </div>  
    			
    				<label class="ml-0">Update Certificate if required ( Max 1 MB )</label>
	                
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
                    <img src="img/pro.jpg" alt="avatar" class="rounded-circle img-responsive">
                    </div>
                    
                    <div class="modal-body text-center mb-1">
        
                    <h5 class="mt-1 mb-2 pink-text">DELETE PROJECT ? </h5>
                    <p>This action cannot be undone...!!!!</p>
                    <form action="/projects/delete" method="POST">
                    <div class="text-center mt-4">
                        <input type="hidden" name="id" id="del_id">
                        <button type="button" class="btn btn-purple mt-1" data-dismiss="modal">Cancel </button>
                        <button type="submit" class="btn btn-pink mt-1">Delete</button>
                    </div>
                   </form>
        
                    </div>
        
                </div>
               
                </div>
                </div>
           
       


    </div>


    
   

    <script type="text/javascript" src="js/project.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
   <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
    
</body>
</html>