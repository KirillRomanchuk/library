<%@ tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ attribute name="title" %>
<%@ attribute name="dataTable" %>
<%@ attribute name="errorMessage" %>

<c:set var="base" value="${pageContext.request.contextPath}" scope="application"></c:set>

<html>
<head>
    <title>${title}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${base}/static/css/styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <c:if test="${dataTable != null}">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <script>$(document).ready(function () {
            $('#${dataTable}').DataTable();
            var menu = $('#${dataTable}-menu');
            if (menu.length) {
                var filter = $('#${dataTable}_filter').children()[0];
                filter.setAttribute('style', 'display: inline-flex;');
                filter.appendChild(menu[0]);
            }
        });
        </script>
    </c:if>

</head>
<body>
<tag:header/>
<div class="container">
    <c:if test="${errorMessage != null && !errorMessage.equals('')}">
        <div class="alert alert-danger" role="alert">
            ${errorMessage}
        </div>
    </c:if>
    <h1 class="text-center">${title}</h1>
    <jsp:doBody/>
</div>
</body>
</html>