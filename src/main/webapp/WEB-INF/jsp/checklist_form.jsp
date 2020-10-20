<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckList Form</title>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">

</head>
<style>
	  body{
        background-image: linear-gradient(to right top, #f2e1f1, #f0e1ef, #ede1ed, #ebe0eb, #e9e0e9);
        font-family: 'Josefin Sans', sans-serif;
        font-size:medium;
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
        <a class="navbar-brand" href="#">CheckList Form</a>
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
    <a class="navbar-brand text-white" href="#">CheckList Form</a>
  
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
	
    <div class="container pt-2">
        <header class="text-center pt-4">
            <p class="h1 font-weight-bold"><strong>St. Joseph's Group of Institutions</strong></p>
            <p class="h6"><strong> Centre for Training & Placement</strong></p>
            <p class="h5 pt-2"><strong> STUDENT PLACEMENT EVALUATION SHEET</strong></p>
            <p class="h5 pt-2"><strong>CAMPUS PLACEMENT PRE-REQUISITE CHECKLIST</strong></p>
        </header>
        <form:form action="/submitform/${checklist.getMonth()}/${checklist.getYear()}" method="post" modelAttribute="checklist"> 
        <main class="pt-5">
            <div class="table-responsive-md py-2">
                <table class="table table-hover table-striped">
                    <thead class="bg-dark text-white">
                    <tr>
                        <th scope="col" colspan="2"> Sl. No</th>
                        <th scope="col">As on ${checklist.getMonth()} ${checklist.getYear()} </th>  
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Mini Projects</td>
                        <td><form:input type="text" path='mini_project' class="form-control"  placeholder="Number"/></td>
                    </tr>   
                    <tr>
                        <td>2</td>
                        <td>Online Certifications
                            (from CourseEra, Lynda, Udemy etc)</td>
                        <td><form:input type="text" path='certification' class="form-control" placeholder="YES/NO"/></td>
                    
                      </tr>

                      <tr>
                        <td>3</td>
                        <td>Department Specific Course
                            ( Done by Self )</td>
                        <td><form:input type="text" path='deptSpecific' class="form-control" placeholder="YES/NO"/></td>
                      
                      </tr>

                      <tr>
                        <td>4</td>
                        <td>Workshops</td>
                        <td><form:input type="text" path='workshops' class="form-control" placeholder="YES/NO"/></td>
                       
                      </tr>

                      <tr>
                        <td>5</td>
                        <td>BEC Certification & Level Cleared</td>
                        <td><form:input type="text" path='bec_certification' class="form-control" placeholder="LEVEL"/></td>
                       
                      </tr>

                      <tr>
                        <td>6</td>
                        <td>Online Aptitude Performance
                            (Cumulative Percentage)</td>
                        <td><form:input type="text" path='apt_level' class="form-control" placeholder="PERCENT"/></td>
                        
                      </tr>

                      <tr>
                        <td>7</td>
                        <td>Online Coding Performance rating
                            (Excellent / Good / Average / Poor)</td>
                        <td><form:input type="text" path='coding_level' class="form-control" placeholder="RATING"/></td>
                        
                      </tr>

                      <tr>
                        <td>8</td>
                        <td>Languages Known & Certification
                            Japanese / German / French</td>
                        <td><form:input type="text" path='languages' class="form-control" placeholder="YES/NO"/></td>
                       
                      </tr>

                      <tr>
                        <td>9</td>
                        <td>AMCAT Assesment
                            Quants, Reasoning & Verbal Score > 50</td>
                        <td><form:input type="text" path='amcat_score' class="form-control" placeholder="YES/NO"/></td>
                       
                      </tr>

                      <tr>
                        <td>10</td>
                        <td>GATE Score, If any & Percentile</td>
                        <td><form:input type="text" path='Gate_score' class="form-control" placeholder="MARKS/NO"/></td>
                        
                      </tr>

                      <tr>
                        <td>11</td>
                        <td>GRE Score If any</td>
                        <td><form:input type="text" path='gre_score' class="form-control" placeholder="MARKS/NO"/></td>
                        <c:if test="${checklist.id != 0 }">
                      <form:input type="hidden" path="id"/>
                      </c:if>
                       
                      </tr>
                      

                      <tr>
                        <td>12</td>
                        <td>Inplant Training ( No's)</td>
                        <td><form:input type="number" path='inplants' class="form-control" placeholder="Number"/></td>
                        
                      </tr>

                      <tr>
                        <td>13</td>
                        <td>Internship Details (No's)</td>
                        <td><form:input type="number" path='internships' class="form-control" placeholder="Number"/></td>
                       
                      </tr>

                      <tr>
                        <td>14</td>
                        <td>Linkedin Profile : Yes / No</td>
                        <td><form:input type="text" path='LinkedIn' class="form-control" value="${sessionScope.student.linkedin}" placeholder="USER ID"/></td>
                        
                      </tr>

                      <tr>
                        <td>15</td>
                        <td>Git Hub Contribution : Yes / No</td>
                        <td><form:input type="text" path='github' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>

                      <tr>
                        <td>16</td>
                        <td>Won / Participated in
                            Hackathons or Coding Contest</td>
                        <td><form:input type="text" path='hack_coding_comp' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>

                      <tr>
                        <td>17</td>
                        <td>Won / Participated in
                            Symposium</td>
                        <td><form:input type="text" path='symposium' class="form-control" placeholder="YES/NO"/></td>
                       
                      </tr>

                      <tr>
                        <td>18</td>
                        <td>Participated / Published in
                            Conference or Journal
                            </td>
                        <td><form:input type="text" path='journal' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>

                      <tr>
                        <td>19</td>
                        <td>Phase I project (in 7th sem)
                        </td>
                        <td><form:input type="text" path='phase_1' class="form-control" placeholder="PHASE"/></td>
                        
                      </tr>

                      <tr>
                        <td>20</td>
                        <td>Undergone the
                            C Programming Training from the College</td>
                        <td><form:input type="text" path='C_training' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>
       

                      <tr>
                        <td>21</td>
                        <td>Undergone Department
                            Specific Training from College</td>
                        <td><form:input type="text" path='dept_training' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>

                      <tr>
                        <td>22</td>
                        <td>Undergone the
                            Aptitude Crash Course from the College</td>
                        <td><form:input type="text" path='apt_training' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>
                      <tr>
                        <td>23</td>
                        <td>Undergone the Communication Skill training
                            from College</td>
                        <td><form:input type="text" path='com_training' class="form-control" placeholder="YES/NO"/></td>
                        
                      </tr>
                    </tbody>
                </table>
                <button class=" btn btn-purple float-right">Submit</button>
                
            </div>
        </main>
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