<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-expand-lg bg-dark navbar-dark px-5">
    <a class="navbar-brand mr-3 logo_nuvbar" href="/">Test task</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">

            <li class="nav-item">
                <a class="nav-link" href="/"><spring:message code="navbar.add.user"/></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/user/list"><spring:message code="navbar.users"/></a>
            </li>

        </ul>

        <ul class="navbar-nav ml-auto">

            <li class="nav-item dropdown mx-1">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                   aria-haspopup="true"
                   aria-expanded="false"><spring:message code="language"/></a>
                <div class="dropdown-menu dropdown-menu-dark">
                    <a class="dropdown-item" href="?lang=en"><spring:message code="english"/></a>
                    <a class="dropdown-item" href="?lang=ru"><spring:message code="russian"/></a>
                </div>
            </li>

        </ul>

    </div>

</nav>