<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <%-- 引入JQ和Bootstrap --%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">

    <title>StudentManagementSystem - Homepage</title>

    <script>
        $(function () {
            $("ul.pagination li.disabled a").click(function () {
                return false;
            });
        });
    </script>
</head>

<body>

<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">

        <caption>student - total${page.total}</caption>
        <thead>
        <tr class="success">
            <th>Student ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Birthday</th>

            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${students}" var="s" varStatus="status">
            <tr>
                <td>${s.studentID}</td>
                <td>${s.name}</td>
                <td>${s.age}</td>
                <td>${s.sex}</td>
                <td>${s.birthday}</td>

                <td><a href="/editStudent?id=${s.id}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="/deleteStudent?id=${s.id}"><span class="glyphicon glyphicon-trash"></span> </a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<nav class="pageDIV">
    <ul class="pagination">
        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?page.start=0">
                <span>«</span>
            </a>
        </li>

        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?page.start=${page.start-page.count}">
                <span>‹</span>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a
                            href="?page.start=${status.index*page.count}"
                            <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                    >${status.count}</a>
                </li>
            </c:if>
        </c:forEach>

        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <a href="?page.start=${page.start+page.count}">
                <span>›</span>
            </a>
        </li>
        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <a href="?page.start=${page.last}">
                <span>»</span>
            </a>
        </li>
    </ul>
</nav>

<div class="addDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">Addstudent</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="/addStudent" role="form">
                <table class="addTable">
                    <tr>
                        <td>studentID：</td>
                        <td><input type="text" name="studentID" id="studentID" placeholder="please enter studentid"></td>
                    </tr>
                    <tr>
                        <td>Name：</td>
                        <td><input type="text" name="name" id="name" placeholder="please enter name"></td>
                    </tr>
                    <tr>
                        <td>Age：</td>
                        <td><input type="text" name="age" id="age" placeholder="please enter age"></td>
                    </tr>
                    <tr>
                        <td>Gender：</td>
                        <td><input type="radio" class="radio radio-inline" name="radio" value="Male"> Male
                            <input type="radio" class="radio radio-inline" name="radio" value="Female"> Female
                        </td>
                    </tr>
                    <tr>
                        <td>Birthday：</td>
                        <td><input type="date" name="birthday" id="birthday" placeholder="please enter birthday"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
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