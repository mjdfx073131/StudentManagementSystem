<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <%-- 引入JQ和Bootstrap --%>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet">

    <title>StudentManagementSystem - EditPage</title>
</head>

<body>

<div class="editDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">EditStudent</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="/updateStudent" role="form">
                <table class="editTable">
                    <tr>
                        <td>StudentID：</td>
                        <td><input type="text" name="studentID" id="studentID" value="${student.studentID}"
                                   placeholder="please enter the studentID"></td>
                    </tr>
                    <tr>
                        <td>Name：</td>
                        <td><input type="text" name="name" id="name" value="${student.name}" placeholder="please enter the name">
                        </td>
                    </tr>
                    <tr>
                        <td>Age：</td>
                        <td><input type="text" name="age" id="age" value="${student.age}" placeholder="please enter the age"></td>
                    </tr>
                    <tr>
                        <td>Gender：</td>
                        <td><input type="radio" class="radio radio-inline" name="radio" value="Male"> Male
                            <input type="radio" class="radio radio-inline" name="radio" value="Female"> Female
                        </td>
                    </tr>
                    <tr>
                        <td>Birhthday：</td>
                        <td><input type="date" name="birthday" id="birthday" value="${student.birthday}"
                                   placeholder="please enter the birthday"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="id" value="${student.id}">
                            <button type="submit" class="btn btn-success">submit</button>
                        </td>

                    </tr>

                </table>
            </form>
        </div>
    </div>

</div>

</body>
</html>