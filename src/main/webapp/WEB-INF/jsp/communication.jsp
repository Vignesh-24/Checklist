<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
   
    <title>Certifications</title>
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
        <a class="navbar-brand" href="#">Communication Skills</a>
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
    <a class="navbar-brand text-white" href="#">Communication </a>

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
    <div class="container pt-2">
    		
    		<div class="row">
    			
    			
    			<div class="col-lg-12 col-md-12 col-sm-12 py-5 px-2 text-center">
                    <a data-toggle="modal" data-target="#addLang">
                        <h5>Add New</h2>  
                        <img src="img/new.png" height="100px" width="100px" >
                    </a>
                    <hr>
                </div>
    		</div>
    		
        
           
            
            

				<form:form method="post" action="/comm/submit" modelAttribute="commForm" class="form-inline">
               
                
                
                
                
                
                <c:forEach items="${communication.languages}" var="lang" varStatus="status">




                <div class="col-lg-6 col-md-12 col-sm-12 py-3 px-3 ">
    
                        <!--Panel-->
                        <div class="card">
                          <h3 class="card-header unique-color-dark lighten-1 white-text  font-weight-bold text-center py-3">
							<form:input type="text" path="languages[${status.index}].name" value="${lang.name}"/>
                            <c:if test="${ lang.id != 0 }">
                            <form:input type="hidden" id="id" path="languages[${status.index}].id" value="${lang.id }"/>
                            </c:if>
                          </h3>
                          
                          <div class="card-body unique-color-dark">
                           
                            <ul class="list-group">
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Speak : (true /false) </b> <form:input type="text" path="languages[${status.index}].is_speak" value="${lang.is_speak}"/>
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                               <b>Read : (true /false) </b><form:input type="text" path="languages[${status.index}].is_read" value="${lang.is_read}"/>
                                
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                              <b>Write : (true /false)</b> <form:input type="text" path="languages[${status.index}].is_write" value="${lang.is_write}"/>
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                              <b>Certification : </b>  <form:input type="text" path="languages[${status.index}].certification" value="${lang.certification}"/>
                               
                              </li>
                             
                            </ul>
                           
                          </div>
                        </div>
                        <!--/.Panel-->
                    
                 </div>
                 </c:forEach>
                 
                 
                 
                 
                 
                 
                  <div class="col-lg-12 col-md-12 col-sm-12 py-3">
    
                        <!--Panel-->
                        <div class="card">
                          <h3 class="card-header unique-color-dark lighten-1 white-text  font-weight-bold text-center py-3">
							More Information
                           <c:if test="${ communication.id != 0 }"><form:input type="hidden" path="id" value="${communication.id }"  /></c:if>
                          </h3>
                          
                          <div class="card-body unique-color-dark">
                           
                            <ul class="list-group">
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                                <b>Grammar (English) : </b>   <form:input type="text" id="company" value="${ communication.grammar }" path="grammar"/>
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                               <b>Clarity : </b><form:input type="text" id="grm"  value="${ communication.clarity }" path="clarity"  />
                                
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                              <b>Accent : </b> <form:input type="text" id="acc" value="${ communication.accent }" path="accent"   />
                               
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-center heavy-rain-gradient">
                              <b>Attitude : </b>  <form:input type="text" id="att"  value="${ communication.attitude }" path="attitude"  />
                               
                              </li>
                             
                            </ul>
                           
                          </div>
                        </div>
                        <!--/.Panel-->
                    
                 </div>
                 
                 
                 <div class=" justify-content-end text-right	 py-3 pl-2">
                  <input  type="submit"  class=" btn btn-lg btn-pink" value="Save" />
                 </div>
                
                 

                 
           
                 
                 </form:form>
    




    
                    
    
           






   

       

        



        <div class="modal fade" id="addLang" tabindex="-1" role="dialog" aria-labelledby="addLang" aria-hidden="true">
            <div class="modal-dialog cascading-modal modal-avatar modal-md" role="document">
    
            <div class="modal-content">
    
                <div class="modal-header">
                <img src="img/lang.png" alt="avatar" class="rounded-circle img-responsive">
                </div>
                
                <div class="modal-body text-center mb-1 pink-text">
    
                <h5 class="mt-1 mb-2">ADD LANGUAGE (Don't forget to Save finally)</h5>
    
                <form:form action="/comm/add" method="POST" modelAttribute="language">
    
                <div class="md-form ml-0 mr-0">
                    <form:input type="text" id="company" path="name" class="form-control ml-0"/>
                    <label for="company" class="ml-0">Language Name</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <form:input type="number" id="location" path="is_speak" class="form-control ml-0"/>
                    <label for="location" class="ml-0 ">To Speak? (1 - yes / 0 - No )</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <form:input type="number" id="duration" path="is_read" class="form-control ml-0"/>
                    <label for="duration" class="ml-0 ">To Read? (1 - yes / 0 - No )</label>
                </div>
                <div class="md-form ml-0 mr-0">
                    <form:input type="number" id="sem" path="is_write" class="form-control ml-0"/>
                    <label for="sem" class="ml-0">To Write? (1 - yes / 0 - No )</label>
                </div> 
                <div class="md-form ml-0 mr-0">
                    <form:input type="text" id="month" path="certification" class="form-control ml-0"/>
                    <label for="month" class="ml-0">Certification Name(If any / No )</label>
                </div> 
           
    
                <div class="text-center mt-4">
                    <button class="btn btn-pink mt-1">Add<i class="fas fa-sign-in ml-1"></i></button>
                   ( Adding won't Save  ) 
                </div>
    
               </form:form>
    
                </div>
    
            </div>
           
            </div>
        </div>



   
    
    
    
    
    
    </div>
  <!-- Grid row -->





















    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
   <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>



    
</body>
</html>

























































































<%-- 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring 3 MVC Multipe Row Submit - viralpatel.net</title>
</head>
<body>

<h2>Spring MVC Multiple Row Form Submit example</h2>
<form:form method="post" action="/comm/submit" modelAttribute="commForm">
	<table>
	<tr>
		<th>Name</th>
		<th>Speak</th>
		<th>Read</th>
		<th>write</th>
		<th>Certification</th>
	</tr>
	<c:forEach items="${communication.languages}" var="lang" varStatus="status">
		<tr>
			<td><form:input path="languages[${status.index}].name" value="${lang.name}"/></td>
			<td><form:input path="languages[${status.index}].is_speak" value="${lang.is_speak}"/></td>
			<td><form:input path="languages[${status.index}].is_read" value="${lang.is_read}"/></td>
			<td><form:input path="languages[${status.index}].is_write" value="${lang.is_write}"/></td>
			<td><form:input path="languages[${status.index}].certification" value="${lang.certification}"/></td>
		</tr>
	</c:forEach>
</table>	
<br/>

<form:input type="text" path="grammar" />
<form:input type="text" path="clarity" />
<form:input type="text" path="attitude" />
<form:input type="text" path="accent" />
<input type="submit" value="Save" />
	
</form:form>
<br>
Languages
<br>
<form:form action="/comm/add" method="POST" modelAttribute="language">

<form:input path="name"/>
<form:input path="is_speak"/>
<form:input path="is_read"/>
<form:input path="is_write"/>
<form:input path="certification"/>
<input type="submit" value="submit">
</form:form>
</body>
</html> --%>