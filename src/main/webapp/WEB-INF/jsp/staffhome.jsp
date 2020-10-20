
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
</head>
<style>
    body {
        /*background-image: linear-gradient(to right,#ad5389,#3c1053);*/
        background-image: linear-gradient(to right top, #f2e1f1, #f0e1ef, #ede1ed, #ebe0eb, #e9e0e9);
        font-family: 'Josefin Sans', sans-serif;


    }

    @media(max-width:767px) {
        .large-device {
            display: none;
        }
    }

    @media(min-width:768px) {
        .small-device {
            display: none;
        }
    }
</style>

<body>


    <nav class="large-device navbar navbar-dark unique-color-dark justify-content-between pb-3">
        <a class="navbar-brand" href="#">Manage Students</a>
        <form class="form-inline my-1">
            <div class="md-form form-sm my-0 pr-5">
              
                <a href="/staffhome" class="btn-lg pink-text btn-sm px-2 my-0" type="submit">HOME</a>
            </div>
            <a href="/logout" class="btn btn-md btn-red btn-sm my-0" type="submit">Logout</a>

        </form>
    </nav>


    <!--Navbar-->
    <nav class="small-device navbar navbar-dark unique-color-dark pb-3">

        <!-- Navbar brand -->
        <a class="navbar-brand text-white" href="#">Manage Students</a>

        <!-- Collapse button -->
        <button class="navbar-toggler text-white toggler-example" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false"
            aria-label="Toggle navigation"><span class="dark-blue-text"><i
                    class="fas fa-bars fa-1x"></i></span></button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item ">
                    <a class="nav-link pink-text pl-2" href="/staffhome">Home</a>
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

        <div class=" row pb-2 justify-content-end addnew pr-2">
           
            

                
            <a data-toggle="modal" data-target="#addStudent">
                <h5>Add New</h2>  
                <img src="img/new.png" height="100px" width="100px" >
            </a>
            


          
            
        </div>
        
        <hr>



        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">
             <c:forEach items="${students}" var="student" varStatus="status"> 
            


                <div class="row px-1 py-2 ">

                    <div class="col-lg-5 col-md-6 col-sm-12 text-center">

                        <img src="/images/${student.img}" class="img-fluid z-depth-5 rounded-circle" alt="Responsive image" style="width: 220px;height:220px;">


                    </div>

                    <div class="col-lg-7 col-md-6 col-sm-12 text-lg-left text-center pt-3">
                        <p class="h3 font-weight-bold">${student.user.name}</p>
                        <p class="h5">Roll No : ${ student.user.identity }</p>

                        <a href="/result/${student.user.identity}" class="btn btn-md btn-blue">View Report</a>
                    </div>




                </div>
                <hr>
				</c:forEach>
              


                



















            </div>


        </div>






        <div class="modal fade" id="addStudent" tabindex="-1" role="dialog" aria-labelledby="addStudent"
            aria-hidden="true">
            <!--Modal: Contact form-->
            <div class="modal-dialog cascading-modal" role="document">

                <!--Content-->
                <div class="modal-content">

                    <!--Header-->
                    <div class="modal-header secondary-color-dark white-text">
                        <h4 class="title">
                            <i class="fa fa-pencil-alt"></i> &nbsp; Student select Form</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">

                        <!-- Material input name -->
                        
                        <form action="/getStudents">
                        <label> Select Department </label>
                      
                        <div class="md-form">
                           
                            <div class="form-group">
                                
                               
                                <select class="form-control " id="dept" name="dept">
                                  <option selected value="CSE">CSE</option>
                                  <option value="CSE">CSE</option>
                                  <option value="ECE">ECE</option>
                                  <option value="EEE">EEE</option>
                                  <option value="MECH">MECH</option>
                                  <option value="IT">IT</option>
                                  <option value="BIO">BIOTECH</option>
                                  <option value="CHEM">CHEMICAL</option>
                                  <option value="EI">E&I</option>
                                  <option value="CIVIL">CIVIL</option>
                                   <option value="ICE">ICE</option>
                                  
                                </select>
                              </div>
                           
                        </div> 


                        <label> Batch </label>
                      
                        <div class="md-form">
                           
                            <div class="form-group">
                                
                               
                                <select class="form-control" id="batch" name="batch">
                                  <option  value=2021 selected>2017-2021</option>
                                  <option  value=2022 >2018-2022</option>
                                  <option  value=2023 >2019-2023</option>
                                  
                                </select>
                              </div>
                           
                        </div> 
                        
                        <label> Section </label>
                      
                        <div class="md-form">
                           
                            <div class="form-group">
                                
                               
                                <select class="form-control" id="sec" name="section">
                                  <option  value="A" selected>A</option>
                                  <option  value="B" >B</option>
                                  <option  value="C" >C</option>
                                  
                                </select>
                              </div>
                           
                        </div> 

                      

                        <div class="text-center mt-4 mb-2">
                            <button class="btn btn-purple">GET
                                <i class="fa fa-send ml-2"></i>
                            </button>
                        </div>
                        </form>
                    </div>
                </div>
                <!--/.Content-->
            </div>
            <!--/Modal: Contact form-->
        </div>










    </div>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>


</body>

</html>