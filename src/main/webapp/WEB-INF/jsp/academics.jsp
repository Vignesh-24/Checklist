<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academics</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
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
      
	  ::-moz-selection { /* Code for Firefox */
	  color: red;
	  background: yellow;
	 }
	
	::selection {
	  background: #DA70D6;
	}
</style>
<body>
    <nav class="large-device navbar navbar-dark unique-color-dark justify-content-between pb-3">
        <a class="navbar-brand" href="#">Academic Information</a>
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
    <a class="navbar-brand text-white" href="#">Academic Informartion</a>
  
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



  
    <div class="container-fluid pr-5">
    	 <p class="font-weight-bold h4 pt-3 pl-3">Fill details which are appropriate ( For Non-appplicable entries fill "NA" or 0)</p>
        <form:form action="/submit_academics" method="post" modelAttribute="academics" enctype="multipart/form-data">
        <div class="content">
            <!-- Stepers Wrapper -->
            <ul class="stepper stepper-vertical">
                <li class="active">
                    <a href="#board">
                    <span class="circle">1</span>
                    <span class="label black-text">SCHOOL DETAILS</span>
                    </a>
                    <!-- Section Description -->
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">SSLC ( 10th STD ) Information</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="board" path="sslc.board" class="form-control"/>
                                <label for="board" class="purple-text">Enter Board/ University</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" id="yr" onClick="this.select();" path="sslc.year_of_passing" class="form-control"/>
                                <label for="yr" class="purple-text">Year Of Passing</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="spl" path="sslc.specialization" class="form-control"/>
                                <label for="spl" class="purple-text">Specialization</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="marks" path="sslc.marks" class="form-control"/>
                                <label for="marks" class="purple-text">Marks in %</label>
                            </div>
                            <label>Upload Marksheet ( Max 1 MB )</label>
                            <div class="md-form form-md">
                            	<form:input type="hidden" path="sslc.certificate"  />
                            	<input type="file" name="s_cert" />
                  
                            </div>
                            
                             <c:choose>
							    <c:when test="${academics.sslc.certificate == null || academics.sslc.certificate.length() < 3 }">
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger pb-2">( Existing File : ${ academics.sslc.certificate.substring(7) }) </label>
							    </c:otherwise>
							</c:choose>
                            
                            
                        </div>


                        <div class="col-lg-8 col-md-8 col-sm-12">

                            <p class="font-weight-bold">HSC ( 12th STD ) Information</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="hscboard" path="hsc.board" class="form-control"/>
                                <label for="hscboard" class="purple-text">Enter Board/ University</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" onClick="this.select();" id="hscyr" path="hsc.year_of_passing" class="form-control"/>
                                <label for="hscyr" class="purple-text">Year Of Passing</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="hscspl" path="hsc.specialization" class="form-control"/>
                                <label for="hscspl" class="purple-text">Specialization</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="hscmarks" path="hsc.marks" class="form-control"/>
                                <label for="hscmarks" class="purple-text">Marks in %</label>
                            </div>
                            <label>Upload Marksheet ( Max 1 MB )</label>
                             <div class="md-form form-md">
                            	<form:input type="hidden" path="hsc.certificate" />
                            	<input type="file" name="h_cert" />
                            </div>
                            
                             <c:choose>
							    <c:when test="${academics.hsc.certificate == null ||academics.hsc.certificate.length() < 3 }">
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger pb-2">( Existing File : ${academics.hsc.certificate.substring(7) } ) </label>
							    </c:otherwise>
							</c:choose>
                            
                            
                                
                            

                        </div>
                        
                         <div class="col-lg-8 col-md-8 col-sm-12">

                            <p class="font-weight-bold">Diploma Information</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="dpboard" path="diploma.board" class="form-control"/>
                                <label for="dpboard" class="purple-text">Enter Board/ University</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" onClick="this.select();" id="dpyr" path="diploma.year_of_passing" class="form-control"/>
                                <label for="dpyr" class="purple-text">Year Of Passing</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="dpspl" path="diploma.specialization" class="form-control"/>
                                <label for="dpspl" class="purple-text">Specialization</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="dpmarks" path="diploma.marks" class="form-control"/>
                                <label for="dpmarks" class="purple-text">Marks in %</label>
                            </div>
                            <label>Upload Certificate ( Max 1 MB )</label>
                            <div class="md-form form-md">
                            	<form:input type="hidden" path="diploma.certificate" />
                            	
                            	<input type="file" name="d_cert" />
                  
                            
                            </div>
                            
                            <c:choose>
							    <c:when test="${academics.diploma.certificate == null ||academics.diploma.certificate.length() < 3 }">
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger pb-2">( Existing File : ${academics.diploma.certificate.substring(7) } ) </label>
							    </c:otherwise>
							</c:choose>
							                            
                            
                          
                            

                        </div>
                        

                    </div>
                </li>

                <li class="active">
                    <a href="#!">
                    <span class="circle">2</span>
                    <span class="label black-text">UNDER GRADUATE DETAILS</span>
                    </a>
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">( B.E / B.TECH ) Information</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="ugboard" path="ug.board" class="form-control"/>
                                <label for="ugboard" class="purple-text">Enter Board/ University</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" onClick="this.select();" id="ugyr" path="ug.year_of_passing" class="form-control"/>
                                <label for="ugyr" class="purple-text">Year Of Passing</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="ugspl" path="ug.specialization" class="form-control"/>
                                <label for="ugspl" class="purple-text">Specialization</label>
                            </div>
                            <label class="black-text pt-1">Enter Marks ( CGPA ) </label>

                            <div class="form-inline">
                                
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem1" path="ug.sem1" class="form-control"/>
                                    <label for="sem1" class="purple-text" >Semester 1</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem2" path="ug.sem2" class="form-control"/>
                                    <label for="sem2" class="purple-text" >Semester 2</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem3" onClick="this.select();" path="ug.sem3" class="form-control"/>
                                    <label for="sem3" class="purple-text" >Semester 3</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem4" onClick="this.select();" path="ug.sem4" class="form-control"/>
                                    <label for="sem4" class="purple-text" >Semester 4</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem5" onClick="this.select();" path="ug.sem5" class="form-control"/>
                                    <label for="sem5" class="purple-text" >Semester 5</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem6" onClick="this.select();" path="ug.sem6" class="form-control"/>
                                    <label for="sem6" class="purple-text" >Semester 6</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem7" onClick="this.select();" path="ug.sem7" class="form-control"/>
                                    <label for="sem7" class="purple-text" >Semester 7</label>
                                </div>
                               
                            </div>


                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugmarks" onClick="this.select();" path="ug.cgpa" class="form-control"/>
                                <label for="ugmarks" class="purple-text">CGPA</label>
                            </div>

                        </div>



                    </div>

                </li>

                <li class="active">
                    <a href="#!">
                    <span class="circle">3</span>
                    <span class="label black-text">POST GRADUATE DETAILS</span>
                    </a>
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">Degree Information</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="pgboard" path="pg.board" class="form-control"/>
                                <label for="pgboard" class="purple-text">Enter Board/ University</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="pgyr" onClick="this.select();"  path="pg.year_of_passing" class="form-control"/>
                                <label for="pgyr" class="purple-text">Year Of Passing</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="pgspl" path="pg.specialization" class="form-control"/>
                                <label for="pgspl" class="purple-text">Specialization</label>
                            </div>
                            <label class="black-text pt-1">Enter Marks ( CGPA ) </label>

                            <div class="form-inline">
                                
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="pgsem1" onClick="this.select();" path="pg.sem1" class="form-control"/>
                                    <label for="pgsem1" class="purple-text" >Semester 1</label>
                                    <c:if test="${academics.id != 0 }">
                      					<form:input type="hidden" path="id"/>
                      				</c:if>
                      				<c:if test="${academics.ug.id != 0 }">
                      					<form:input type="hidden" path="ug.id"/>
                      				</c:if>
                      					<c:if test="${academics.pg.id != 0 }">
                      					<form:input type="hidden" path="pg.id"/>
                      				</c:if>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="pgsem2" onClick="this.select();" path="pg.sem2" class="form-control"/>
                                    <label for="pgsem2" class="purple-text" >Semester 2</label>
                                    	<c:if test="${academics.sslc.id != 0 }">
                      					<form:input type="hidden" path="sslc.id"/>
                      				</c:if>
                      					<c:if test="${academics.hsc.id != 0 }">
                      					<form:input type="hidden" path="hsc.id"/>
                      				</c:if>
                      					<c:if test="${academics.diploma.id != 0 }">
                      					<form:input type="hidden" path="diploma.id"/>
                      				</c:if>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="pgsem3" onClick="this.select();" path="pg.sem3" class="form-control"/>
                                    <label for="pgsem3" class="purple-text" >Semester 3</label>
                                </div>
                               
                               
                            </div>


                            <div class="md-form form-md">
                                <form:input type="number" id="pgmarks" step="0.01" onClick="this.select();" path="pg.cgpa" class="form-control"/>
                                <label for="pgmarks" class="purple-text">CGPA</label>
                            </div>

                        </div>



                    </div>

                </li>




            
            </ul>

        </div>
        <div class="row mt-1 pb-4">
            <div class="col-md-12 text-center">
                <button class="btn btn-purple btn-md">Submit</button>
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