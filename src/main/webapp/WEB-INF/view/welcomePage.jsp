<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>tecno-tab | home</title>
    <link href="../../resources/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/static/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/welcome" class="navbar-brand">Tecno-Tab</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">New Registration</a></li>
                <li><a href="/show-users">All Users</a></li>
            </ul>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${mode=='MODE_HOME'}">
<div class="container" id="homediv">
    <div class="jumbotron text-center">
        <h1>Welcome to Tecno-tab</h1>
        <h3>Subscribe my channel to support me</h3>
    </div>
</div>
    </c:when>
<c:when test="${mode=='MODE_LOGIN' }">
    <div class="container text-center">
        <h3>User Login</h3>
        <hr>
        <form class="form-horizontal" method="POST" action="/login-user">
            <c:if test="${not empty error }">
                <div class= "alert alert-danger">
                    <c:out value="${error }"></c:out>
                </div>
            </c:if>
            <div class="form-group">
                <label class="control-label col-md-3">Username</label>
                <div class="col-md-7">
                    <input type="text" class="form-control" name="username"
                           value="${user.username }" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Password</label>
                <div class="col-md-7">
                    <input type="password" class="form-control" name="password"
                           value="${user.password }" />
                </div>
            </div>
            <div class="form-group ">
                <input type="submit" class="btn btn-primary" value="Login" />
            </div>
        </form>
    </div>
</c:when>

</c:choose>

<script src="../../resources/static/js/jquery-1.11.1.min.js"></script>
<script src="../../resources/static/js/bootstrap.min.js"></script>
</body>
</html>