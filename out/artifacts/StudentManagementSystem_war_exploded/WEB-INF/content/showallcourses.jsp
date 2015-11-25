<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: aliabbasjaffri
  Date: 26/11/2015
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>All Courses</title>
    <link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
<script src="jquery-1.8.3.js">

</script>

<script src="bootstrap/js/bootstrap.js">

</script>

<div class="navbar navbar-default">

    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">Home</a></li>
                <li><a href="signup-input">Signup</a></li>
                <li ><a href="login-input">Login</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle"
                                        data-toggle="dropdown">Explore<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="courses-show-all">All Courses</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Further Actions</a></li>
                    </ul></li>
            </ul>
        </div>
    </div>
    <!-- /.nav-collapse -->
</div>
<table class="table table-striped">
    <th>
        <td>Course Name</td>
        <td>Course ID</td>
        <td>Instructor Name</td>
        <td>Time</td>
        <td>Day</td>
    </th>
    <s:iterator value="allCourses">
        <tr>
            <th>
                <td ><s:property value="name"/></td>
                <td ><s:property value="courseId"/></td>
                <td ><s:property value="instructorName"/></td>
                <td ><s:property value="time"/></td>
                <td ><s:property value="day"/></td>
            </th>
        </tr>
    </s:iterator>
</table>
</body>
</html>
