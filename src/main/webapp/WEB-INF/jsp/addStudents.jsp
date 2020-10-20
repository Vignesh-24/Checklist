
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Students</title>

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
        <a class="navbar-brand" href="#">Select Students</a>
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
        <a class="navbar-brand text-white" href="#">Select Students</a>

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
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">


                <form action="/addStudents" class="form-inline" method="post">

                   

                   <c:forEach items="${students}" var="student" varStatus="status">

                    <div class="row px-1 py-3">

                        <div class="col-lg-5 col-md-4 col-sm-12 text-center">
    
                            <img src="/images/${student.img}"
                                class="img-fluid z-depth-5 rounded-circle" alt="Responsive image" style="width:250px; height:200px">
    
    
                        </div>
    
                        <div class="col-lg-8 col-md-8 col-sm-12 text-lg-left text-center pt-3">
                            <p class="h3 font-weight-bold">${student.user.name }</p>
                            <p class="h5 pb-2">Roll No : ${ student.user.identity } </p>
    
                            <input type="checkbox"  name="id" value="${ student.id }">&nbsp; Select
                        </div>
    
    
    
    
                    </div>
                    <hr>
					</c:forEach>

                    


                    


		

				
				<c:choose>
				    <c:when test="${students != null}">
				       	<div class="col-sm-12 col-lg-12 col-md-12 text-center mt-4 mb-2">
                            <button class="btn btn-purple">Add
                                <i class="fa fa-send ml-2"></i>
                            </button>
                 		</div>
				    </c:when>    
				    <c:otherwise>
				       <p class="h2">No Available Students</p>
				        <br />
				    </c:otherwise>
				</c:choose>
				
                </form>
            </div>


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