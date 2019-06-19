<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tag:pageModel title="Authors list" dataTable="authors">
    <table id="authors" class="table table-striped">
        <thead>
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Biography</th>
            <th>Birthday</th>
            <th>Die day</th>
        </tr>
        </thead>

        <c:forEach var="author" items="${authors}">
            <tr>
                <td>${author.getFirstName()}</td>
                <td>${author.getLastName()}</td>
                <td>${author.getBiography()}</td>
                <td>${author.getBirthDay()}</td>
                <td>${author.getDieDay()}</td>
            </tr>
        </c:forEach>
    </table>
    <div id="authors-menu">
        <button class="btn navbar-light" data-toggle="dropdown" style="padding: .2rem;">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="${base}/authors/add">Add</a>
        </div>
    </div>
</tag:pageModel>
