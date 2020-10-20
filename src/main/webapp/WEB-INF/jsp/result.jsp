<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
   
    <title>Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    
</head>
<style>


   .page-1{
       page-break-after: always;

   }
   
   .page-2{
       page-break-after: always;

   }

   .page-3{
       page-break-after: always;

   }

   .page-4{
       page-break-after: always;

   }


   body{
       font-size: medium;
   }
   
   
   @media print{
   
   body{
   font-size:small;
   }
   
   nav{
   display:none;}
	
	 #abc  tr{
	 height:9px;
	 line-height:9px;
	 min-height:8px;
	 }
	 
	 #no_print{
	 display:none;}
	 
	}
	
	
   

</style>
<body>

	  <nav class="navbar navbar-expand-lg justify-content-between navbar-light bg-dark  ">
            <a class="navbar-brand text-success" href="#">CHECKLIST FORM</a>
            <form class="form-inline my-1">
            <div class="md-form form-sm my-0 pr-5">
            	
                <a href="/home" class="btn-lg text-danger btn-sm my-0 pr-5" type="submit">HOME</a>
                 <button type="button" class="btn btn-md btn-success px-4 btn-sm my-0" onclick="window.print();">Print</button>
            </div>
           
            <a href="/logout" class="btn btn-md btn-danger btn-sm my-0" type="submit">Logout</a>
            </form>
        </nav>

    <div class="container-fluid page-2">
        <header class="text-center pt-2">
            <p class="h1"><strong>St. Joseph's Group of Institutions</strong></p>
            <p class="h6"><strong> Centre for Training & Placement</strong></p>
            <p class="h5 pt-2"><strong> STUDENT'S PLACEMENT EVALUATION SHEET</strong></p>
            <p class="h5 pt-2"><strong>CAMPUS PLACEMENT AND PRE REQUISITE - CHECK LIST </strong></p>
        </header>
        <main class="pt-5">
            <div class="table-responsive-md">

                <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col" colspan="2"></th>
                        <th scope="col ">As on Dec ${student.YOP-3 }</th>
                        <th scope="col">As on Mar ${student.YOP-2 }</th>
                        <th scope="col">As on Jun ${student.YOP-2 }</th>
                        <th scope="col">As on Dec ${student.YOP-2 }</th>
                        <th scope="col">As on Mar ${student.YOP-1 }</th>
                        <th scope="col">As on Jun ${student.YOP-1 }</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                      
                        <td>1</td>
                        <td>Mini Projects</td>
                        <td><c:out value="${checklists[0].mini_project}" /></td>
                        <td><c:out value="${checklists[1].mini_project}" /></td>
                        <td><c:out value="${checklists[2].mini_project}" /></td>
                        <td><c:out value="${checklists[3].mini_project}" /></td>
                        <td><c:out value="${checklists[4].mini_project}" /></td>
                        <td><c:out value="${checklists[5].mini_project}" /></td>
                      </tr>

                      <tr>
                        <td>2</td>
                        <td>Online Certifications
                            (from CourseEra, Lynda, Udemy etc)</td>
                        <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].certification}"></c:out></td>
                        </c:forEach>
                       
                      </tr>

                      <tr>
                        <td>3</td>
                        <td>Department Specific Course
                            ( Done by Self )</td>
                        <c:forEach var = "i" begin = "0" end = "5">   
                        <td><c:out value="${checklists[i].deptSpecific}" /></td>
                        </c:forEach>
                        
                      </tr>

                      <tr>
                        <td>4</td>
                        <td>Workshops</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].workshops}"/></td>
                        </c:forEach>
                        
                      </tr>

                      <tr>
                        <td>5</td>
                        <td>BEC Certification & Level Cleared</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].bec_certification}" /></td>
                        </c:forEach>
                       
                      </tr>

                      <tr>
                        <td>6</td>
                        <td>Online Aptitude Performance
                            (Cumulative Percentage)</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].apt_level}" /></td>
                        </c:forEach>
                    
                      </tr>

                      <tr>
                        <td>7</td>
                        <td>Online Coding Performance rating
                            (Excellent / Good / Average / Poor)</td>
                        <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].coding_level}" /></td>
                        </c:forEach>
                        
                      </tr>

                      <tr>
                        <td>8</td>
                        <td>Languages Known & Certification
                            Japanese / German / French</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].languages}" /></td>
                        </c:forEach>
                        
                      </tr>

                      <tr>
                        <td>9</td>
                        <td>AMCAT Assesment
                            Quants, Reasoning & Verbal Score > 50</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].amcat_score}" /></td>
                        </c:forEach>
                        
                      </tr>

                      <tr>
                        <td>10</td>
                        <td>GATE Score, If any & Percentile</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].gate_score}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>11</td>
                        <td>GRE Score If any</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].gre_score}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>12</td>
                        <td>Inplant Training ( No's)</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:if test="${checklists[i].inplants !=0 }"><c:out value="${checklists[i].inplants}" /></c:if></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>13</td>
                        <td>Internship Details (No's)</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:if test="${checklists[i].internships !=0 }"><c:out value="${checklists[i].internships}" /></c:if></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>14</td>
                        <td>Linkedin Profile : Yes / No</td>
                        <td  colspan="6" style="text-align:center;"><strong>Linkedin ID :&nbsp; </strong>
                        <c:out value="${student.linkedin}" />
                        <c:if test="${student.linkedin == NULL }"><c:out value="${checklists[0].linkedIn}" /></c:if>
                         </td>
                      </tr>

                      <tr>
                        <td>15</td>
                        <td>Git Hub Contribution : Yes / No</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].github}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>16</td>
                        <td>Won / Participated in
                            Hackathons or Coding Contest</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].hack_coding_comp}" /></td>
                       </c:forEach>
                      </tr>

                      <tr>
                        <td>17</td>
                        <td>Won / Participated in
                            Symposium</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].symposium}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>18</td>
                        <td>Participated / Published in
                            Conference or Journal
                            </td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].journal}" /></td>
                       </c:forEach>
                      </tr>

                      <tr>
                        <td>19</td>
                        <td>Phase I project (in 7th sem)
                        </td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].phase_1}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>20</td>
                        <td>Undergone the
                            C Programming Training from the College</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].c_training}" /></td>
                       </c:forEach>
                      </tr>

                      <tr>
                        <td>21</td>
                        <td>Undergone Department
                            Specific Training from College</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].dept_training}" /></td>
						</c:forEach>
                      </tr>

                      <tr>
                        <td>22</td>
                        <td>Undergone the
                            Aptitude Crash Course from the College</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].apt_training}" /></td>
                        </c:forEach>
                      </tr>

                      <tr>
                        <td>23</td>
                        <td>Undergone the Communication Skill training
                            from College</td>
                         <c:forEach var = "i" begin = "0" end = "5">
                        <td><c:out value="${checklists[i].com_training}" /></td>
                       </c:forEach>
                      </tr>
                    </tbody>
                  </table>
    


            </div>
            
        </main>
        
    </div>
    


    <div class="container-fluid page-2">

        <p class="h5 pb-2">Personal Information (to be filled by the student)</p>
        <div class="temp" style="width:60%">
        <div class="col" >
        <div class="row ">
        <label > Student Name:</label> &nbsp;&nbsp;<label> ${ student.user.name } </label>
       </div>
        <div class="row ">
        <label > Roll No / University Reg No:</label>&nbsp;&nbsp;<label> ${ student.user.identity } </label></div>
        <div class="row ">
        <label > Date of Birth:</label>&nbsp;&nbsp;<label>${student.DOB}</label></div>
        <div class="row ">
        <label > College:</label>&nbsp;&nbsp;<label>St. Joseph's College Of Engineering</label></div>
        <div class="row ">
        <label > Degree:</label>&nbsp;&nbsp;<label>${student.degree }</label></div>
        <div class="row ">
        <label > Branch/Section:</label>&nbsp;&nbsp;<label>${student.branch} &nbsp;  ${student.section}</label></div>
        <div class="row ">
        <label > Year of Passing:</label>&nbsp;&nbsp;<label>${student.YOP}</label></div>
        <div class="row ">    
        <label > Permanent Address:</label>&nbsp;&nbsp;<label>${student.address}</label></div>
        <div class="row ">    
        <label > Email:</label>&nbsp;&nbsp;<label>${student.user.email}</label></div>
        <div class="row">    
        <label > Mobile no:</label>&nbsp;&nbsp;<label>${student.mobile}</label><label >
        <div style="margin-left:250px;">
         Gender : &nbsp;</label><label>${student.user.gender}</label></div></div>
        </div> 
        </div>
        <img src="/result/images/${student.img }"  style="width:15%; margin-top:-285px;margin-left:70%">
         <p class="h5 pb-2">ACADEMIC CREDENTIALS</p>
        <div class="table-responsive-md" >

                <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col ">COURSE</th>
                        <th scope="col">Board / University</th>
                        <th scope="col">Year of Passing</th>
                        <th scope="col">Specialization</th>
                        <th scope="col">Marks in Percentage / CGPA</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td >10th Grade</td>
                        <td>${academics.sslc.board}</td>
                        <td>${academics.sslc.year_of_passing}</td>
                        <td>${academics.sslc.specialization}</td>
                        <td>${academics.sslc.marks}</td>
                      </tr>

                      <tr>
                        <td >12th Grade</td>
                         <td>${academics.hsc.board}</td>
                        <td>${academics.hsc.year_of_passing}</td>
                        <td>${academics.hsc.specialization}</td>
                        <td>${academics.hsc.marks}</td>
                      </tr>

                      <tr>
                        <td>Diploma</td>
                        <td>${academics.diploma.board}</td>
                        <td><c:if test="${academics.diploma.year_of_passing !=0 }">${academics.diploma.year_of_passing}</c:if></td>
                        <td>${academics.diploma.specialization}</td>
                        <td><c:if test="${academics.diploma.marks !=0 }">${academics.diploma.marks}</c:if></td>
                      </tr>

                      <tr>
                        <td>UG Degree</td>
                        <td>${academics.ug.board}</td>
                         <td>${academics.ug.year_of_passing}</td>
                        <td>${academics.ug.specialization}</td>
                        <td>${academics.ug.cgpa}</td>
                      </tr>

                      <tr>
                        <td>PG Degree</td>
                        <td>${academics.pg.board}</td>
                         <td><c:if test="${academics.pg.year_of_passing!=0}">${academics.pg.year_of_passing}</c:if></td>
                        <td>${academics.pg.specialization}</td>
                        <td><c:if test="${academics.pg.cgpa!=0}">${academics.pg.cgpa}</c:if></td>
                      </tr>

                      
                     
                    </tbody>
                  </table>
    


            </div>
           <p class="h5 pb-2">UG DEGREE<label style="margin-left:70%">CGPA : ${academics.ug.cgpa }</label></p>
         
        <div class="table-responsive-md" >
            <table class="table table-bordered"  id="abc">
                    <thead>
                      <tr>
                        <th scope="col ">Semester's</th>
                        <th scope="col">Sem 1</th>
                        <th scope="col">Sem 2</th>
                        <th scope="col">Sem 3</th>
                        <th scope="col">Sem 4</th>
                        <th scope="col">Sem 5</th>
                        <th scope="col">Sem 6</th>
                        <th scope="col">Sem 7</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="text-align:center">CGPA</td>
                        <td><c:if test="${academics.ug.sem1 !=0 }"> ${academics.ug.sem1}</c:if></td>
                        <td><c:if test="${academics.ug.sem2 !=0 }">${academics.ug.sem2}</c:if></td>
                        <td><c:if test="${academics.ug.sem3 !=0 }">${academics.ug.sem3}</c:if></td>
                        <td><c:if test="${academics.ug.sem4 !=0 }">${academics.ug.sem4}</c:if></td>
                        <td><c:if test="${academics.ug.sem5 !=0 }">${academics.ug.sem5}</c:if></td>
                        <td><c:if test="${academics.ug.sem6 !=0 }">${academics.ug.sem6}</c:if></td>
                        <td><c:if test="${academics.ug.sem7 !=0 }">${academics.ug.sem7}</c:if></td>  
                      </tr>
                   </tbody>
                  </table>
        </div>
    <p class="h5 pb-2">PG DEGREE<label style="margin-left:70%">CGPA : ${academics.pg.cgpa }</label></p>
    
        <div class="table-responsive-md" >
    <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col ">Semester's</th>
                        <th scope="col">Sem 1</th>
                        <th scope="col">Sem 2</th>
                        <th scope="col">Sem 3</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="text-align:center">CGPA</td>
                        <td><c:if test="${academics.pg.sem1 !=0 }">${academics.pg.sem1}</c:if></td>
                        <td><c:if test="${academics.pg.sem2 !=0 }">${academics.pg.sem2}</c:if></td>
                        <td><c:if test="${academics.pg.sem3 !=0 }">${academics.pg.sem3}</c:if></td>
                      </tr>
                   </tbody>
                  </table>
        </div>
    <p class="h5 pb-2">Department Specific Knowledge ( Rating - Poor / Average / Good / Excellent )</p>
        <div class="table-responsive-md" >
    <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col ">Semester's</th>
                        <th scope="col">Sem 1</th>
                        <th scope="col">Sem 2</th>
                        <th scope="col">Sem 3</th>
                        <th scope="col">Sem 4</th>
                        <th scope="col">Sem 5</th>
                        <th scope="col">Sem 6</th>
                        <th scope="col">Sem 7</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="text-align:center">Rating</td>
                        <td>${rating.sem1}</td>
                        <td>${rating.sem2}</td>
                        <td>${rating.sem3}</td>
                        <td>${rating.sem4}</td>
                        <td>${rating.sem5}</td>
                        <td>${rating.sem6}</td>
                        <td>${rating.sem7}</td>  
                      </tr>
                   </tbody>
                  </table>
        </div>
    <p class="h5 pb-2">Projects, If Any</p>
        <div class="table-responsive-md" >
     <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col" rowspan="2" >Sl.No</th>
                        <th scope="col" rowspan="2">Details of the Project</th>
                        <th scope="col" colspan="2">Details of Completion of Project</th>
                      </tr>
                        <tr>
                        <th scope="col" >In Semester</th>
                        <th scope="col">Month & Year</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${projects}" var="project" varStatus="status"> 
                      <tr>
                        <td>${status.index+1}</td>
                        <td>${project.pro_detail}</td>
                        <td>${project.sem}</td>
                        <td>${project.month} ${project.year}</td>
                      </tr>
					</c:forEach>
                      
                      
                     
                    </tbody>
                  </table>
        </div>
        <p class="h5 pb-2">Certifications / Dept Specific Courses / Workshops If Any</p>
        <div class="table-responsive-md" >
     <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col" rowspan="2" >Sl.No</th>
                        <th scope="col" rowspan="2">Details of Certification / Course / Workshops</th>
                        <th scope="col" rowspan="2">Certification Partner / Training Partner</th>
                        <th scope="col" colspan="3">Details of Duration & Completion details</th>
                      </tr>
                        <tr>
                        <th scope="col" >Duration</th>
                        <th scope="col" >In Semester</th>
                        <th scope="col">Month & Year</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${courses}" var="course" varStatus="status"> 
                      <tr>
                        <td>${status.index+1}</td>
                        <td>${course.details}</td>
                        <td>${course.trainer}</td>
                        <td>${course.duration}</td>
                        <td>${course.sem}</td>
                        <td>${course.month} &nbsp; ${course.year}</td>
                      </tr>
                      </c:forEach>

                     
                     
                    </tbody>
                  </table>
        </div>
    </div>
    <div class="container-fluid page-2">
    <p class="h5 pb-2">Programming Knowledge / IT Skills</p>
    <div class="table-responsive-md" >
     <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col" rowspan="2" >Sl.No</th>
                        <th scope="col" rowspan="2">Details of Programming Languages known</th>
                        <th scope="col" rowspan="2">Certification Partner / Training Partner</th>
                        <th scope="col" colspan="3">Details of Duration & Completion details</th>
                      </tr>
                        <tr>
                        <th scope="col" >Duration</th>
                        <th scope="col" >In Semester</th>
                        <th scope="col">Month & Year</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${skills}" var="skill" varStatus="status"> 
                      <tr>
                        <td>${status.index+1}</td>
                        <td>${skill.details}</td>
                        <td>${skill.trainer}</td>
                        <td>${skill.duration}</td>
                        <td>${skill.sem}</td>
                        <td>${skill.month} &nbsp; ${skill.year}</td>
                      </tr>
                      </c:forEach>

                      
                      
                     
                    </tbody>
                  </table>
        </div>
        <p class="h5 pb-2">Skill rack online coding performance</p>
         <div class="table-responsive-md" >
    <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col ">Semester wise Performance</th>
                        <th scope="col" >Sem 4</th>
                        <th scope="col">Sem 5</th>
                        <th scope="col">Sem 6</th>
                        <th scope="col">Sem 7</th>
                        <th scope="col">Sem 8</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Performance rating (Poor / Average / Good / Excellent)</td>
                        <td >${rating.skillrack.code_sem_4 }</td>
                        <td >${rating.skillrack.code_sem_5 }</td>
                        <td >${rating.skillrack.code_sem_6 }</td>
                        <td >${rating.skillrack.code_sem_7 }</td>
                        <td >${rating.skillrack.code_sem_8 }</td>
                      </tr>
                       <tr>
                        <td>Cumulative Percentage Completion</td>
                        <td>${rating.skillrack.code_percent_4 }</td>
                        <td>${rating.skillrack.code_percent_5 }</td>
                        <td>${rating.skillrack.code_percent_6 }</td>
                        <td>${rating.skillrack.code_percent_7 }</td>
                        <td>${rating.skillrack.code_percent_8 }</td>
                      </tr>
                   </tbody>
                  </table>
        </div>
        <p class="h5 pb-2">Skill rack online aptitude score > 50%</p>
        <div class="table-responsive-md" >
    <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col ">Sem wise Attendance</th>
                        <th scope="col" >Sem 2</th>
                        <th scope="col" >Sem 3</th>
                        <th scope="col" >Sem 4</th>
                        <th scope="col">Sem 5</th>
                        <th scope="col">Sem 6</th>
                        <th scope="col">Sem 7</th>
                        <th scope="col">Sem 8</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Attendance Percentage</td>
                       	<td>${rating.skillrack.apt_att_2 }</td>
                       	<td>${rating.skillrack.apt_att_3 }</td>
                       	<td>${rating.skillrack.apt_att_4 }</td>
                       	<td>${rating.skillrack.apt_att_5 }</td>
                       	<td>${rating.skillrack.apt_att_6 }</td>
                       	<td>${rating.skillrack.apt_att_7 }</td>
                       	<td>${rating.skillrack.apt_att_8 }</td>
                      </tr>
                       <tr>
                        <td>Cumulative Performance</td>
                        <td>${rating.skillrack.apt_cum_2 }</td>
                       	<td>${rating.skillrack.apt_cum_3 }</td>
                       	<td>${rating.skillrack.apt_cum_4 }</td>
                       	<td>${rating.skillrack.apt_cum_5 }</td>
                       	<td>${rating.skillrack.apt_cum_6 }</td>
                       	<td>${rating.skillrack.apt_cum_7 }</td>
                       	<td>${rating.skillrack.apt_cum_8 }</td>
                      </tr>
                   </tbody>
                  </table>
        </div>
        <p class="h5 pb-2">COMMUNICATION SKILLS</p>
        <p>Languages Known:</p>
        <div class="table-responsive-md" >

                <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col ">Sl.No</th>
                        <th scope="col">Languages Known</th>
                        <th scope="col">Speak</th>
                        <th scope="col">Read</th>
                        <th scope="col">Write</th>
                        <th scope="col">Certification if any</th>  
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${communication.languages}" var="lang" varStatus="status"> 
                      <tr>
                        <td>${status.index +1}</td>
                        <td>${lang.name}</td>
                        <td>${lang.is_speak}</td>
                        <td>${lang.is_read}</td>
                        <td>${lang.is_write}</td>
                        <td>${lang.certification}</td>  
                      </tr>

                     </c:forEach>

                      
                     
                    </tbody>
                  </table>
    


            </div>
            <p><b>Clarity, Fluency and conciseness (In English)  :</b>&nbsp;  ${communication.clarity}</p>
            <p><strong>Appropriateness of Grammar, Diction. (In English)  :</strong>&nbsp;  ${communication.grammar}</p>
            <p><strong>Adverse influence of Accent  :</strong>&nbsp;  ${communication.accent}</p>
            <p><strong>Attitude  :</strong>&nbsp;  ${communication.attitude}</p>
            <p class="h5 pb-2">AMCAT Performance</p>
            <div class="table-responsive-md" >
           <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col" rowspan="2" >Sl.No</th>
                        <th scope="col" rowspan="2">AMCAT Details</th>
                        <th scope="col" colspan="6">Section Wise Performance percentage</th>
                      </tr>
                        <tr>
                        <th scope="col" >Quantative</th>
                        <th scope="col">Non Verbal</th>
                        <th scope="col">Verbal</th>
                        <th scope="col">Computer Programming</th>
                        <th scope="col">Automata</th>
                        <th scope="col">Domain Scores</th>    
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1.</td>
                        <td>AMCAT 1 ( In 6th Semester)</td>
                        <td>${online.amcat1.quants }</td>
                        <td>${online.amcat1.nonverb }</td>
                        <td>${online.amcat1.verb }</td>
                        <td>${online.amcat1.program }</td>
                        <td>${online.amcat1.automata }</td>
                        <td>${online.amcat1.domain }</td>  
                      </tr>

                      <tr>
                        <td>2.</td>
                        <td>AMCAT 2</td>
                        <td>${online.amcat2.quants }</td>
                        <td>${online.amcat2.nonverb }</td>
                        <td>${online.amcat2.verb }</td>
                        <td>${online.amcat2.program }</td>
                        <td>${online.amcat2.automata }</td>
                        <td>${online.amcat2.domain }</td>  
                      </tr>

                      
                      
                     
                    </tbody>
                  </table>
        </div>
        
        <p class="h5 pb-1">BEC CERTIFICATION :   YES</p>
        <p >BEC Level  :&nbsp;&nbsp; ${online.bec_level }</p>
        <p>BEC Exam Grade  :&nbsp;&nbsp;${online.bec_grade }<label style="margin-left:45%">Month & Year of Passing :&nbsp;${online.bec_month_year}</label></p>
        <p class="h5 pb-1">GATE Score If any :</p>
        <p>Gate Percentile : &nbsp;&nbsp; ${online.gate_score }<label style="margin-left:45%;">Month & Year of Passing  :&nbsp;${online.gate_month_year}</label></p>
        <p class="h5 pb-1">GRE Score If any :</p>
        <p>GRE Percentile  : &nbsp;&nbsp; ${online.gre_score }<label style="margin-left:45%;">Month & Year of Passing  :&nbsp;${online.gre_month_year}</label></p>
        
    </div>
    <div class="container-fluid page-3">
        <div class="table-responsive-md" >

                <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col" rowspan="2">Sl.No</th>
                        <th scope="col" colspan="2">Details of Inplant Training / Internship</th>
                        <th scope="col" colspan="3">Details of Duration & Completion details</th>  
                      </tr>
                      <tr>
                        <th>Company in which Internship / Inplant Training was carried out</th>
                        <th>Location</th>
                        <th>Duration</th>
                        <th>In Semester</th>
                        <th>Month & Year</th>  
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${internships}" var="intern" varStatus="status"> 
                      <tr>
                        <td >${status.index+1}</td>
                        <td>${intern.company}</td>
                        <td>${intern.location}</td>
                        <td>${intern.duration}</td>
                        <td>${intern.sem}</td>
                        <td>${intern.month} &nbsp; ${intern.year} </td>  
                      </tr>

                     </c:forEach>

                     
                    </tbody>
                  </table>
        </div>
        
        <p class="h5 pb-2">Other Information (to be filled by the student )</p>
        <p>Passport Details (Passport Number) :&nbsp;&nbsp; ${student.passport }</p>
        <p>PAN Card Details (PAN Number) :&nbsp;&nbsp; ${student.pan }</p>
        <p>Aadhar Details (Aadhar Number :&nbsp;&nbsp; ${student.aadhaar }</p>
        <p>LinkedIn Profile (User ID) :&nbsp;&nbsp; ${checklists[0].linkedIn }</p>
        <p>Professional Membership if Any :&nbsp;&nbsp; ${student.membership }</p>
        
        
        <p class="h6 pt-2">CAREER ASPIRATIONS / GOALS / PERCEPTION OF SELF</p>
        <p>${student.career}</p>
        
        
        <p class="h6">What is Your Contribution for achieve your Goals / Aspiration </p>
        <p>${student.goal }</p>
        <p class="h6 pt-2">Justification For their Career Aspiration</p>
        
        
        
        
        
        <div class="table-responsive-md">

                <table class="table table-bordered" id="abc">
                    <thead>
                      <tr>
                        <th scope="col">Sl.No</th>
                        <th scope="col"></th>
                        <th scope="col">Poor</th>
                        <th scope="col">Average</th>
                        <th scope="col">Good</th>
                        <th scope="col">Excellent</th>  
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1.</td>
                        <td>Realistic Evaluation Of Self</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>  
                      </tr>

                      <tr>
                        <td >2.</td>
                        <td>Reason for Interest in Field</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>  
                      </tr>

                      <tr>
                        <td>3.</td>
                        <td>Realistic Career Goals</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>  
                      </tr>

                     
                    </tbody>
                  </table>
        </div>
        
        
        <label class="h6">Mentor Name : &nbsp;</label><label>${wrapper.name }</label><label class="h6" style="margin-left:50%;">Designation :&nbsp;</label><label>${wrapper.designation }</label>
        <br>
        <div class="table-responsive-md" >

                <table class="table table-bordered" id="abc">
                    
                    <tbody>
                      <tr>
                        <td>Evaulated on ( DD/MM/YYYY)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>  
                      </tr>
                    </tbody>
                  </table>
        </div>
        
        
    
        
        
        
        <div class="table-responsive-md" id="no_print">
        	<p class="h5 py-4">List of Uploaded Documents</p>
            <table class="table table-bordered"  >
                    <thead>
                      <tr>
                        <th scope="col " style="text-align:center">Name of Document</th>
                        <th scope="col" style="text-align:center">Certificate</th>
                         
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <c:if test='${ academics.sslc.certificate.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">SSLC (10 th )</td>
                        <td style="text-align:center"><a href='/result/images/${academics.sslc.certificate}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                      
                      
                     <c:if test='${ academics.hsc.certificate.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">HSC ( 12 th )</td>
                        <td style="text-align:center"><a href='/result/images/${academics.hsc.certificate}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                     
                     <c:if test='${ academics.diploma.certificate.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">Diploma</td>
                        <td style="text-align:center"><a href='/result/images/${academics.diploma.certificate}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                     
                     
                     <c:if test='${ online.bec_cert.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">BEC</td>
                        <td style="text-align:center"><a href='/result/images/${online.bec_cert}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                     
                     
                     <c:if test='${ online.gre_cert.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">GRE</td>
                        <td style="text-align:center"><a href='/result/images/${online.gre_cert}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                     
                     
                     <c:if test='${ online.gate_cert.length() > 3 }'>
                    
                      <tr>
                        <td style="text-align:center">GATE</td>
                        <td style="text-align:center"><a href='/result/images/${online.gate_cert}' target="#">View Certificate</a></td>
                      </tr>
                      
                     </c:if>
                      
                      <tr class="h6" ><td colspan='2' >ONLINE COURSES</td></tr>
                      
                      <c:forEach items="${courses}" var="course" varStatus="status">
	                      
	                      <c:if test='${ course.certificate.length() > 3 }'>
	                    
	                      <tr>
	                        <td style="text-align:center">${course.details }</td>
	                        <td style="text-align:center"><a href='/result/images/${course.certificate}' target="#">View Certificate</a></td>
	                      </tr>
	                      
	                     </c:if>
                      </c:forEach>
                      
                      
                      
                      
                       <tr class="h6"><td colspan='2' >PROGRAMMING SKILLS</td></tr>
                      
                      <c:forEach items="${skills}" var="skill" varStatus="status">
	                      
	                      <c:if test='${ skill.certificate.length() > 3 }'>
	                    
	                      <tr>
	                        <td style="text-align:center">${skill.details }</td>
	                        <td style="text-align:center"><a href='/result/images/${skill.certificate}' target="#">View Certificate</a></td>
	                      </tr>
	                      
	                     </c:if>
                      </c:forEach>
                      
                      
                      
                       <tr class="h6"><td colspan='2' >INPLANT / INTERNSHIPS</td></tr>
                      
                      <c:forEach items="${internships}" var="intern" varStatus="status">
	                      
	                      <c:if test='${ intern.certificate.length() > 3 }'>
	                    
	                      <tr>
	                        <td style="text-align:center">${intern.company }</td>
	                        <td style="text-align:center"><a href='/result/images/${intern.certificate}' target="#">View Certificate</a></td>
	                      </tr>
	                      
	                     </c:if>
                      </c:forEach>
                      
                      
                      
                       <tr class="h6"><td colspan='2' >PROJECT REPORTS</td> </tr>
                      
                      <c:forEach items="${projects}" var="project" varStatus="status">
	                      
	                      <c:if test='${ project.certificate.length() > 3 }'>
	                    
	                      <tr>
	                        <td style="text-align:center">${project.pro_detail }</td>
	                        <td style="text-align:center"><a href='/result/images/${project.certificate}' target="#">View Certificate</a></td>
	                      </tr>
	                      
	                     </c:if>
                      </c:forEach>
                      
                      
                   </tbody>
                  </table>
        </div>
        
        
  
    </div>    
    
</body>
</html>