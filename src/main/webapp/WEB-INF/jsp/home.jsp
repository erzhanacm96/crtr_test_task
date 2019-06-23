<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Test Task</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <!-- for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>

<tag:navbar/>

<div class="container px-2 py-2">

    <div class="row justify-content-center">
        <h3 class="my-5 ml-3"><spring:message code="headline.adding.user"/></h3>
    </div>

    <form:form method="post" action="/user/addUser" class="needs-validation" novalidate="true">

        <div class="form-row mb-4">
            <div class="col-md-3">
                <label for="firstName"><spring:message code="label.first.name"/></label>
                <input class="form-control <c:if test="${not empty firstNameError}">is-invalid</c:if>" type="text"
                       id="firstName" name="firstName"
                       value="<c:if test="${not empty user}">${user.firstName}</c:if>"
                       placeholder="<spring:message code="placeholder.first.name"/>" required>
                <div class="invalid-feedback">
                    <spring:message code="${firstNameError}"/>
                </div>
            </div>

            <div class="col-md-3">
                <label for="secondName"><spring:message code="label.second.name"/></label>
                <input class="form-control <c:if test="${not empty secondNameError}">is-invalid</c:if>" type="text"
                       id="secondName" name="secondName"
                       value="<c:if test="${not empty user}">${user.secondName}</c:if>"
                       placeholder="<spring:message code="placeholder.second.name"/>" required>
                <div class="invalid-feedback">
                    <spring:message code="${secondNameError}"/>
                </div>
            </div>

            <div class="col-md-3">
                <label for="patronymic"><spring:message code="label.patronymic"/></label>
                <input class="form-control <c:if test="${not empty patronymicError}">is-invalid</c:if>" type="text"
                       id="patronymic" name="patronymic"
                       value="<c:if test="${not empty user}">${user.patronymic}</c:if>"
                       placeholder="<spring:message code="placeholder.patronymic"/>" required>
                <div class="invalid-feedback">
                    <spring:message code="${patronymicError}"/>
                </div>
            </div>

            <div class="col-md-3">
                <label for="birthday"><spring:message code="label.birthday"/></label>
                <input class="form-control <c:if test="${not empty birthdayError}">is-invalid</c:if>" type="date"
                       id="birthday" name="birthday"
                       value="<c:if test="${not empty user}">${selectedDate}</c:if>" required>
                <div class="invalid-feedback">
                    <spring:message code="${birthdayError}"/>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <button class="btn mt-3 px-5 btn-dark" type="submit"><spring:message
                    code="button.add.user"/></button>
        </div>
    </form:form>

</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>

</body>
</html>
