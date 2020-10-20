<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating</title>
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
      .jumbotron{
          background-color: transparent;
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
        <a class="navbar-brand" href="#">Manage Performance</a>
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
    <a class="navbar-brand text-white" href="#">Manage Performance</a>

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

    <div class="container-fluid pt-3">

        <form action="/submit/rating" method="post" modelAttribute="rating">
            <div class="jumbotron ">
                <h4 class="font-weight-bold py-2">Department Specific Knowledge</h4>
                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 1 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Poor" id="defaultInline1" path="rating.sem1" />
                                <label class="custom-control-label" for="defaultInline1">Poor</label>
                              </div>
                              
                              <!-- Default inline 2-->
                              <div class="custom-control custom-radio custom-control-inline">
                                <form:radiobutton  class="custom-control-input" id="defaultInline2" value="Average" path="rating.sem1" />
                                <label class="custom-control-label" for="defaultInline2">Average</label>
                              </div>
                              
                              <!-- Default inline 3-->
                              <div class="custom-control custom-radio custom-control-inline">
                                <form:radiobutton  class="custom-control-input" id="defaultInline3" value="Good" path="rating.sem1" />
                                <label class="custom-control-label" for="defaultInline3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline">
                                <form:radiobutton  class="custom-control-input" id="defaultInline4" value="Excellent" path="rating.sem1" />
                                <label class="custom-control-label" for="defaultInline4">Excellent</label>
                              </div>
                    </div>
                </div>


                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 2 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Poor" id="sem2_1" path="rating.sem2" />
                                <label class="custom-control-label" for="sem2_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem2_2" value="Average" path="rating.sem2"/>
                                <label class="custom-control-label" for="sem2_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem2_3" value="Good"  path="rating.sem2" />
                                <label class="custom-control-label" for="sem2_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem2_4" value="Excellent" path="rating.sem2" />
                                <label class="custom-control-label" for="sem2_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 3 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Poor" id="sem3_1" path="rating.sem3" />
                                <label class="custom-control-label" for="sem3_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input"  id="sem3_2" value="Average" path="rating.sem3" />
                                <label class="custom-control-label" for="sem3_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem3_3"  value="Good"  path="rating.sem3" />
                                <label class="custom-control-label" for="sem3_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem3_4" value="Excellent"  path="rating.sem3" />
                                <label class="custom-control-label" for="sem3_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>


                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 4 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Poor" id="sem4_1" path="rating.sem4" />
                                <label class="custom-control-label" for="sem4_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem4_2" value="Average" path="rating.sem4" />
                                <label class="custom-control-label" for="sem4_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem4_3" value="Good"  path="rating.sem4" />
                                <label class="custom-control-label" for="sem4_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem4_4" value="Excellent"  path="rating.sem4" />
                                <label class="custom-control-label" for="sem4_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>


                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 5 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Poor" id="sem5_1" path="rating.sem5" />
                                <label class="custom-control-label" for="sem5_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Average" id="sem5_2" path="rating.sem5" />
                                <label class="custom-control-label" for="sem5_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem5_3" value="Good"  path="rating.sem5" />
                                <label class="custom-control-label" for="sem5_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem5_4" value="Excellent"  path="rating.sem5" />
                                <label class="custom-control-label" for="sem5_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 6 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem6_1" value="Poor" path="rating.sem6" />
                                <label class="custom-control-label" for="sem6_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" value="Average" id="sem6_2" path="rating.sem6" />
                                <label class="custom-control-label" for="sem6_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem2_3" value="Good"  path="rating.sem6" />
                                <label class="custom-control-label" for="sem6_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem6_4" value="Excellent"  path="rating.sem6" />
                                <label class="custom-control-label" for="sem6_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 7 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem7_1" value="Poor" path="rating.sem7" />
                                <label class="custom-control-label" for="sem7_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem7_2" value="Average" path="rating.sem7" />
                                <label class="custom-control-label" for="sem7_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem7_3"  value="Good" path="rating.sem7" />
                                <label class="custom-control-label" for="sem7_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="sem7_4" value="Excellent"  path="rating.sem7" />
                                <label class="custom-control-label" for="sem7_4">Excellent</label>
                              </div>
                            
                             
                    </div>
                </div>
                
                    
                
            </div>


            <div class="jumbotron ">
            
                <h4 class="font-weight-bold py-2">Skill Rack Coding Performance</h4>
                
                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 4 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code4_1" value="Poor" path="rating.skillrack.code_sem_4" />
                                <label class="custom-control-label" for="code4_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code4_2" value="Average" path="rating.skillrack.code_sem_4" />
                                <label class="custom-control-label" for="code4_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code4_3" value="Good"  path="rating.skillrack.code_sem_4" />
                                <label class="custom-control-label" for="code4_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code4_4" value="Excellent"  path="rating.skillrack.code_sem_4" />
                                <label class="custom-control-label" for="code4_4">Excellent</label>
                              </div>
                              <div class="md-form form-md">
                                <form:input type="number" onClick="this.select();" step="0.01" id="ugboard1" path="rating.skillrack.code_percent_4" class="form-control" />
                                <label for="ugboard1" class="deep-purple-text">Cummulative Percentage % </label>
                            </div>
                            
                             
                    </div>
                </div>


                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 5 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code5_1" value="Poor" path="rating.skillrack.code_sem_5" />
                                <label class="custom-control-label" for="code5_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code5_2" value="Average" path="rating.skillrack.code_sem_5" />
                                <label class="custom-control-label" for="code5_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code5_3"  value="Good"  path="rating.skillrack.code_sem_5" />
                                <label class="custom-control-label" for="code5_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code5_4" value="Excellent"  path="rating.skillrack.code_sem_5" />
                                <label class="custom-control-label" for="code5_4">Excellent</label>
                              </div>
                              <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard2" onClick="this.select();" path="rating.skillrack.code_percent_5" class="form-control" />
                                <label for="ugboard2" class="deep-purple-text">Cummulative Percentage % </label>
                            </div>
                              
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 6 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code6_1" value="Poor" path="rating.skillrack.code_sem_6" />
                                <label class="custom-control-label" for="code6_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code6_2" value="Average" path="rating.skillrack.code_sem_6" />
                                <label class="custom-control-label" for="code6_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code6_3" value="Good"  path="rating.skillrack.code_sem_6" />
                                <label class="custom-control-label" for="code6_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code6_4"  value="Excellent"  path="rating.skillrack.code_sem_6" />
                                <label class="custom-control-label" for="code6_4">Excellent</label>
                              </div>
                              <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard3" onClick="this.select();" path="rating.skillrack.code_percent_6" class="form-control" />
                                <label for="ugboard3" class="deep-purple-text">Cummulative Percentage % </label>
                            </div>
                            
                             
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 7 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code7_1"  value="Poor" path="rating.skillrack.code_sem_7" />
                                <label class="custom-control-label" for="code7_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code7_2" value="Average" path="rating.skillrack.code_sem_7" />
                                <label class="custom-control-label" for="code7_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code7_3"  value="Good" path="rating.skillrack.code_sem_7" />
                                <label class="custom-control-label" for="code7_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code7_4"  value="Excellent" path="rating.skillrack.code_sem_7" />
                                <label class="custom-control-label" for="code7_4">Excellent</label>
                              </div>
                              <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard4" onClick="this.select();" path="rating.skillrack.code_percent_7" class="form-control" />
                                <label for="ugboard4" class="deep-purple-text">Cummulative Percentage % </label>
                            </div>
                            
                             
                    </div>
                </div>
                
                
                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 8 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code8_1" value="Poor" path="rating.skillrack.code_sem_8" />
                                <label class="custom-control-label" for="code8_1">Poor</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code8_2" value="Average" path="rating.skillrack.code_sem_8" />
                                <label class="custom-control-label" for="code8_2">Average</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline ">
                                <form:radiobutton  class="custom-control-input" id="code8_3"  value="Good" path="rating.skillrack.code_sem_8" />
                                <label class="custom-control-label" for="code8_3">Good</label>
                              </div>
                              <div class="custom-control custom-radio custom-control-inline">
                                <form:radiobutton  class="custom-control-input" id="code8_4" value="Excellent"  path="rating.skillrack.code_sem_8" />
                                <label class="custom-control-label" for="code8_4">Excellent</label>
                              </div>
                              <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="ugboard7" onClick="this.select();" path="rating.skillrack.code_percent_8" class="form-control" />
                                <label for="ugboard7" class="deep-purple-text">Cummulative Percentage % </label>
                            </div>
                            
                             
                    </div>
                </div>




            
            </div>

            <div class="jumbotron">
                <h4 class="font-weight-bold py-2"> Skill Rack Aptitude Performance </h4>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 2 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="att2" onClick="this.select();" path="rating.skillrack.apt_att_2" class="form-control" />
                                <label for="att2" class="deep-purple-text">Attendance Percentage (%)</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="cum2" onClick="this.select();" path="rating.skillrack.apt_cum_2" class="form-control" />
                                <label for="cum2" class="deep-purple-text">Cummulative Percentage (%) </label>
                            </div>
                                
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 3 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="att3" path="rating.skillrack.apt_att_3" class="form-control" />
                                <label for="att3" class="deep-purple-text">Attendance Percentage (%)</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="cum3" path="rating.skillrack.apt_cum_3" class="form-control" />
                                <label for="cum3" class="deep-purple-text">Cummulative Percentage (%) </label>
                            </div>
                                
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 4 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" onClick="this.select();" id="att4" path="rating.skillrack.apt_att_4" class="form-control" />
                                <label for="att4" class="deep-purple-text">Attendance Percentage (%)</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="cum4" onClick="this.select();" path="rating.skillrack.apt_cum_4" class="form-control" />
                                <label for="cum4" class="deep-purple-text">Cummulative Percentage (%) </label>
                            </div>
                                
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 5 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="att5" onClick="this.select();" path="rating.skillrack.apt_att_5" class="form-control" />
                                <label for="att5" class="deep-purple-text">Attendance Percentage (%)</label>
                                <c:if test="${rating.id != 0}">
                                <form:input type="hidden" path="rating.id" />
                                </c:if>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="cum5" onClick="this.select();" path="rating.skillrack.apt_cum_5" class="form-control" />
                                <label for="cum5" class="deep-purple-text">Cummulative Percentage (%) </label>
                                <c:if test="${rating.skillrack.id != 0}">
                                <form:input type="hidden" path="rating.skillrack.id" />
                                </c:if>
                            </div>
                                
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 6 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="att6" onClick="this.select();" path="rating.skillrack.apt_att_6" class="form-control" />
                                <label for="att6" class="deep-purple-text">Attendance Percentage (%)</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="cum6" path="rating.skillrack.apt_cum_6" class="form-control" />
                                <label for="cum6" class="deep-purple-text">Cummulative Percentage (%) </label>
                            </div>
                                
                    </div>
                </div>

                <div class="row pt-3">

                    <div class="col-lg-6 col-md-4">
                       <label class="purple-text">Sem 7 Rating</label>
                    </div>
                    <div class="col-lg-6 col-md-8">
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="att7" onClick="this.select();" path="rating.skillrack.apt_att_7" class="form-control" />
                                <label for="att7" class="deep-purple-text">Attendance Percentage (%)</label>
                            </div>
                            <div class="md-form form-md">
                                <form:input type="number" step="0.01" id="cum7" onClick="this.select();" path="rating.skillrack.apt_cum_7" class="form-control" />
                                <label for="cum7" class="deep-purple-text">Cummulative Percentage (%) </label>
                            </div>
                                
                    </div>
                </div>



            </div>



   


            <div class="text-center pb-5">
                <button type="submit" class="btn btn-purple">Submit</button>
            </div>

        </form>
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