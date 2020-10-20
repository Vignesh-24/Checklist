<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assessment Details</title>
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
        <a class="navbar-brand" href="#">Assessment Information</a>
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
    <a class="navbar-brand text-white" href="#">Assessment Information</a>
  
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
        <form:form action="/submit_assessment" method="post" modelAttribute="assessment" enctype="multipart/form-data">
        <div class="content">
            <!-- Stepers Wrapper -->
            <ul class="stepper stepper-vertical">
                <li class="active">
                    <a href="#board">
                    <span class="circle">1</span>
                    <span class="label black-text">AMCAT DETAILS</span>
                    </a>
                    <!-- Section Description -->
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">AMCAT ASSESSMENT 1</p>

                            	<div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem1" path="amcat1.quants" class="form-control"/>
                                    <label for="sem1" class="purple-text" >Quantative %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem2" path="amcat1.nonverb" class="form-control"/>
                                    <label for="sem2" class="purple-text" >Non verbal %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem3" onClick="this.select();" path="amcat1.verb" class="form-control"/>
                                    <label for="sem3" class="purple-text" >Verbal %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem4" onClick="this.select();" path="amcat1.program" class="form-control"/>
                                    <label for="sem4" class="purple-text" >Computer programming</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem5" onClick="this.select();" path="amcat1.automata" class="form-control"/>
                                    <label for="sem5" class="purple-text" >Automata</label>
                                </div>
                                 <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem6" onClick="this.select();" path="amcat1.domain" class="form-control"/>
                                    <label for="sem6" class="purple-text" >Domain Scores</label>
                                </div>

                        </div>


                        <div class="col-lg-8 col-md-8 col-sm-12">

                            <p class="font-weight-bold">AMCAT ASSESSMENT 2</p>

                           		<div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem11" path="amcat2.quants" class="form-control"/>
                                    <label for="sem11" class="purple-text" >Quantative %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" onClick="this.select();" id="sem22" path="amcat2.nonverb" class="form-control"/>
                                    <label for="sem22" class="purple-text" >Non verbal %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem33" onClick="this.select();" path="amcat2.verb" class="form-control"/>
                                    <label for="sem33" class="purple-text" >Verbal %</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem44" onClick="this.select();" path="amcat2.program" class="form-control"/>
                                    <label for="sem44" class="purple-text" >Computer programming</label>
                                </div>
                                <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem55" onClick="this.select();" path="amcat2.automata" class="form-control"/>
                                    <label for="sem55" class="purple-text" >Automata</label>
                                </div>
                                 <div class="md-form form-group pr-4">
                                    <form:input type="number" step="0.01" id="sem66" onClick="this.select();" path="amcat2.domain" class="form-control"/>
                                    <label for="sem66" class="purple-text" >Domain Scores</label>
                                </div>

                        </div>
                        
                         
                    </div>
                </li>

                <li class="active">
                    <a href="#!">
                    <span class="circle">2</span>
                    <span class="label black-text">BEC CERTIFICATION DETAILS</span>
                    </a>
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">Provide Details</p>

                            <div class="md-form form-md">
                                <form:input type="text" id="ugboard" path="bec_level" class="form-control"/>
                                <label for="ugboard" class="purple-text">Level (Preliminary / Vantage / Higher )</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" onClick="this.select();" id="ugyr" path="bec_grade" class="form-control" />
                                <label for="ugyr" class="purple-text">Exam Grade</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="text" id="ugspl" path="bec_month_year" class="form-control"/>
                                <label for="ugspl" class="purple-text">Month & year of passing</label>
                            </div>
                           
                           
                           
                           <label>Upload Certificate ( Max 1 MB )</label>
                            <div class="md-form form-md">
                            	<form:input type="hidden" path="bec_cert"  />
                            	<input type="file" name="b_cert" />
                  
                            </div>
                            
                             <c:choose>
							    <c:when test="${assessment.bec_cert.length() < 3 }">
							    
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger">( Existing File : ${assessment.bec_cert.substring(7)} ) </label>
							    </c:otherwise>
							</c:choose>
                           
                           
                           
                           
                           
                         
                        </div>



                    </div>

                </li>
                
                
                
                <li class="active">
                    <a href="#!">
                    <span class="circle">3</span>
                    <span class="label black-text">GATE / GRE </span>
                    </a>
                    <div class="step-content col-lg-12 col-md-12 col-sm-12">

                        <div class="col-lg-8 col-md-8 col-sm-12">
                            <p class="font-weight-bold">Provide Details</p>

                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard" path="gate_score" class="form-control"/>
                                <label for="ugboard" class="purple-text">GATE Score (If Yes)</label>
                            </div>
                          
                            <div class="md-form form-md">
                                <form:input type="text" id="ugspll" path="gate_month_year" class="form-control"/>
                                <label for="ugspll" class="purple-text">Month & year of passing</label>
                            </div>
                            
                            
                            
                            <label>Upload Certificate, if any  ( Max 1 MB )</label>
                            <div class="md-form form-md">
                            	<form:input type="hidden" path="gate_cert"  />
                            	<input type="file" name="g_cert" />
                  
                            </div>
                            
                             <c:choose>
							    <c:when test="${assessment.gate_cert.length() < 3 }">
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger">( Existing File : ${assessment.gate_cert.substring(7) } ) </label>
							    </c:otherwise>
							</c:choose>
                    
                            
                            
                            
                            
                            
                            
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard1" path="gre_score" class="form-control"/>
                                <label for="ugboard1" class="purple-text">GRE Score (If Yes)</label>
                                 <c:if test="${assessment.id != 0 }">
                      					<form:input type="hidden" path="id"/>
                      			 </c:if>
                      			 <c:if test="${assessment.amcat1.id != 0 }">
                      					<form:input type="hidden" path="amcat1.id"/>
                      			 </c:if>
                      			 <c:if test="${assessment.amcat2.id != 0 }">
                      					<form:input type="hidden" path="amcat2.id"/>
                      			 </c:if>
                            </div>
                          	
                            <div class="md-form form-md">
                                <form:input type="text" id="ugspl1" path="gre_month_year" class="form-control"/>
                                <label for="ugspl1" class="purple-text">Month & year of passing</label>
                            </div>
                            
                            
                            <label>Upload GRE Certificate, if any ( Max 1 MB )</label>
                            <div class="md-form form-md">
                            	<form:input type="hidden" path="gre_cert"  />
                            	<input type="file" name="gg_cert" />
                  
                            </div>
                            
                             <c:choose>
							    <c:when test="${assessment.gre_cert.length() < 3 }">
							         <label class="text-danger">( Existing File : NA ) </label>
							        
							    </c:when>    
							    <c:otherwise>
							        
							         <label class="text-danger">( Existing File : ${assessment.gre_cert.substring(7) } ) </label>
							    </c:otherwise>
							</c:choose>
                    
                           
                         
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