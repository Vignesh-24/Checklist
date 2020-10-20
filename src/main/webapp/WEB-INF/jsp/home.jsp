<!DOCTYPE html>
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
    body{
        /*background-image: linear-gradient(to right,#ad5389,#3c1053);*/
        background-image: linear-gradient(to right top, #f2e1f1, #f0e1ef, #ede1ed, #ebe0eb, #e9e0e9);
        font-family: 'Josefin Sans', sans-serif;

        
    }

    .jumbotron{
        background-color: transparent;
        
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
     <div class="header">
          <!--Navbar-->
          <nav class="large-device navbar navbar-dark unique-color-dark justify-content-between pb-3">
            <span class="navbar-brand" href="#"> Welcome   ${ sessionScope.user.name}</span>
            <form class="form-inline my-1">
            <div class="md-form form-sm my-0 pr-5">
                <a href="/result/1" class="btn-lg pink-text btn-sm px-2 my-0" type="submit">MY REPORT</a>
                 <a href="/profile" class="btn-lg pink-text btn-sm px-2 my-0" type="submit">PROFILE</a>
            </div>
            <a href="/logout" class="btn btn-md btn-red btn-sm my-0" type="submit">Logout</a>
            </form>
        </nav>


        <!--Navbar-->
        <nav class="small-device navbar navbar-dark unique-color-dark pb-3">

        <!-- Navbar brand -->
        <span class="navbar-brand" href="#"> Welcome   ${ sessionScope.user.name}</span>
    
        <!-- Collapse button -->
        <button class="navbar-toggler text-white toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
        aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i
            class="fas fa-bars fa-1x"></i></span></button>
    
        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
    
        <!-- Links -->
        <ul class="navbar-nav mr-auto">
        	<li class="nav-item ">
            <a class="nav-link pink-text pl-2" href="/profile">PROFILE</a>
            </li>
            <li class="nav-item ">
            <a class="nav-link pink-text pl-2" href="/result/1">MY REPORT</a>
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
     </div>

     <div class="main py-3">
         <div class="container-fluid">


            
            <div class="jumbotron animated bounceInDown">
                <h2 class="display-4">CHECK LIST </h2>
                <hr class="my-4">
                <p class="h4">Click on the respective months to edit your checklist</p>
                <div class="row py-3">
              

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Dec/${sessionScope.student.YOP -3 }">
                                    <div class="text-dark d-flex h-100 mask purple-gradient-rgba">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title"> As on Dec</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP -3 }</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Mar/${sessionScope.student.YOP - 2} ">
                                    <div class="text-dark d-flex h-100 mask peach-gradient">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title">As on Mar</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP - 2}</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Jun/${sessionScope.student.YOP - 2}">
                                    <div class="text-dark d-flex h-100 mask blue-gradient-rgba">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title">As on Jun</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP - 2}</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    
                </div>
                <div class="row py-3 ">
              

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Dec/${sessionScope.student.YOP - 2}">
                                    <div class="text-dark d-flex h-100 mask dusty-grass-gradient">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title"> As on Dec</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP - 2}</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Mar/${sessionScope.student.YOP - 1}">
                                    <div class="text-dark d-flex h-100 mask young-passion-gradient">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title">As on Mar</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP - 1}</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 mb-4 ">
                        <div class="card gradient-card">
                            <div class="card-image">
                                <a href="/checklist_form/Jun/${sessionScope.student.YOP - 1}">
                                    <div class="text-dark d-flex h-100 mask night-fade-gradient">
                                        <div class="first-content align-self-center p-3">
                                        <h3 class="card-title">As on Jun</h3>
                                        <h3 class="card-title">${sessionScope.student.YOP - 1}</h3>
                                        </div> 
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                </div>

         </div>

     </div>

     <div class="container print">

        <div class="row pb-5">

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image img-fluid" style="background-image: url(img/academic.png);background-size:contain">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-graduation-cap" aria-hidden="true"></i>  Academics</h5>
                            <h3 class="card-title pt-2"><strong>Academic Information</strong></h3>
                            <p>Fill your SSLC, HSC, UG, PG degree information by proceeding with the below link...  </p>
                            <a class="btn btn-pink" href="/academics"><i class="fas fa-clone left"></i> Add info</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image img-fluid" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-folder-open" aria-hidden="true"></i>  Projects</h5>
                            <h3 class="card-title pt-2"><strong>Your Projects</strong></h3>
                            <p>Provide all the neccessary details of your projects by proceeding with the below link... </p>
                            <a class="btn btn-pink" href="/projects"><i class="fas fa-clone left"></i> Add Project</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>


        <div class="row pb-5">

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image" style="background-image: url(img/intern.jpg);background-size:contain">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-users" aria-hidden="true"></i>  Intern</h5>
                            <h3 class="card-title pt-2"><strong>Internship / Inplant training </strong></h3>
                            <p>Fill your inplant training and internship details which you undergone by proceeding with the below link...</p>
                            <a class="btn btn-pink" href="/interns"><i class="fas fa-clone left"></i> Add Details</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image" style="background-image: url(img/certificate.png);background-size:contain;">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-certificate" aria-hidden="true"></i>  Courses</h5>
                            <h3 class="card-title pt-2"><strong>Certification Courses</strong></h3>
                            <p>Provide details about the online certification courses or workshops attended by proceeding with the below link...</p>
                            <a class="btn btn-pink" href="/courses"><i class="fas fa-clone left"></i> Add Courses</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <div class="row pb-5">

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image" style="background-image: url(img/programming.jpg);background-size:contain">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-code" aria-hidden="true"></i>  Skills</h5>
                            <h3 class="card-title pt-2"><strong>Programming Knowledge</strong></h3>
                            <p>Provide details about the various programming languages you know by proceeding with the below link... </p>
                            <a class="btn btn-pink" href="/skills"><i class="fas fa-clone left"></i> Add Skills</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5">
                <div class="card card-image " style="background-image: url(img/lang.png);background-size:contain">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-language" aria-hidden="true"></i>  Communication</h5>
                            <h3 class="card-title pt-2"><strong>Languages Known</strong></h3>
                            <p>Provide details about the languages you know by proceeding with the below link...</p>
                            <a class="btn btn-pink" href="/communication"><i class="fas fa-clone left"></i> Add Language</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        
        <div class="row pb-5">

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5 ">
                <div class="card card-image" style="background-image: url(img/online.jpg);background-size:contain;">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-code" aria-hidden="true"></i>  Online Assessments</h5>
                            <h3 class="card-title pt-2"><strong>AMCAT/BEC Details </strong></h3>
                            <p>Provide details about the Amcat & BEC performance by proceeding with the below link... </p>
                            <a class="btn btn-pink" href="/online_assessment"><i class="fas fa-clone left"></i> Add Info</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 py-2 px-5">
                <div class="card card-image " style="background-image: url(img/rating.jpg);background-size:contain;">
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fa fa-language" aria-hidden="true"></i>  Ratings</h5>
                            <h3 class="card-title pt-2"><strong>Where you Stand?</strong></h3>
                            <p>Provide details about your current ratings by proceeding with the below link...</p>
                            <a class="btn btn-pink" href="/rating"><i class="fas fa-clone left"></i> Manage rating </a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        




     </div>

     <footer class="page-footer font-small black">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">&copy; 2020 Copyright:
          <a href="#"> St. Joseph's College of Engineering </a>
        </div>
        <!-- Copyright -->
		
		<div class="py-1 text-center">
		<p class="text-center">Developed By &nbsp; <a target="#" href="https://www.linkedin.com/in/vignesh-k-g/">Vignesh K G</a></p>
		</div>
      
      </footer>
       <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
   <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

</body>
</html>