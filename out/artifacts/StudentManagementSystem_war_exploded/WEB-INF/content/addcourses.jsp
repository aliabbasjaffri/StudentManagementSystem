<%--
  Created by IntelliJ IDEA.
  User: aliabbasjaffri
  Date: 25/11/2015
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student Dashboard</title>
    <link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
<script src="jquery-1.8.3.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

<div class="navbar navbar-default">
    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Home</a></li>
            <li><a href="signup-input">Signup</a></li>
            <li class="active"><a href="login-input">Login</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle"
                                    data-toggle="dropdown">Explore<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="courses-show-all">All Courses</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Further Actions</a></li>
                </ul></li>
        </ul>
    </div>
    <!-- /.nav-collapse -->
</div>

<table class="table table-striped">
    <th>
        <td>Course Name</td>
        <td>Course ID</td>
        <td>Instructor Name</td>
        <td>Day</td>
        <td>Time</td>
    </th>
    <tr>
        <th>
        <td>Jill</td>
        <td>Smith</td>
        <td>50</td>
        </th>
    </tr>
    <tr>
        <th>
        <td>Eve</td>
        <td>Jackson</td>
        <td>94</td>
        </th>
    </tr>
    <tr>
        <th>
        <td>John</td>
        <td>Doe</td>
        <td>80</td>
        </th>
    </tr>
</table>

</body>
</html>
