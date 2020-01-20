<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@taglib prefix="secutiry" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <br>
    <title>BookATour</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontAwesome/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
  <header>
        <nav class="navbar navbar-expand-lg navbar-info bg-dark">
            <div class="container">
                <a id="appTitle" class="navbar-brand nav-link-hover text-primary"><b>Book a Tour</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#NavbarUtils"
                        aria-controls="NavbarUtils" aria-expanded="false" aria-label="Toggle navigation">
                    <span style="font-size:20px;" class="navbar-toggler-icon fas fa-bars">
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="NavbarUtils">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item main-item"><a href="${pageContext.request.contextPath}/HomeGuide"
                                                          class="nav-link nav-link-hover"><b>Home</b></a></li>
                        <li class="nav-item  active"><a href="${pageContext.request.contextPath}/tour/guidetours"
                                                        class="nav-link nav-link-hover"><b>myTours</b></a></li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle nav-link-hover" id="navbarDropdown1"
                               role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user-circle"></i>
                                <b>${user.username}</b>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item nav-link-hover" href="${pageContext.request.contextPath}/guide/update">
                                    myProfile
                                </a>
                                    <a class="dropdown-item nav-link-hover" href="${pageContext.request.contextPath}/message/inbox">
                                    My Messages
                                </a>
                                <a class="dropdown-item nav-link-hover">
                                        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                                            <input type="submit" value="Logout">
                                        </form:form>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="image"></div>
    <h3 class="text-left"><b>Edit Tour</b></h3>
    <br>
    <form method="POST">
        <button type="submit" id="updateTourBtn" class="btn btn-primary"><a name="editTour" id="editTour">
                Update</a></button>
        <div class="row padding">
            <table id="EditTourTable" class="bg-info table table-hover table-striped table-bordered col-4 border border-dark">

                <thead>
                    <tr class="bg-dark text-primary">
                <label for="location"><th class="text-center" scope="col">Location</th></label>  
                <label for="date"><th class="text-center" scope="col">Date</th></label>  
                <label for="cost"><th class="text-center" scope="col">Cost</th></label>  
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">
                            <input type="text" value="${t.location}" id="location" name="location" placeholder="Enter Location" required>
                        </td>
                        <td class="text-center">
                            <input type="date" value="${t.tdate}" id="editTourDate" name="createTourDate" placeholder="Enter Date" required>
                        </td>
                        <td class="text-center">
                            <p><input type="any" value="${t.cost}" id="cost" name="cost" placeholder="Enter Price in Euros..." required>  </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>



    <!--JQUERY-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!--BOOTSTRAP-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/app.js"></script>
</body>

</html>