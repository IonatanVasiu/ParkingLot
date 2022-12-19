<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:pageTemplate pageTitle="AddUser">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
      <%--@declare id=""--%><h1> Add user </h1>
    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="username">
          Username
        </label>
        <input type="text" class="'form-control" id="username" name="username" placeholder="" value="" required>
        <div class="invalid-feedback">
          Username is required.
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="email">
          Email
        </label>
        <input type="text" class="'form-control" id="email" name="email" placeholder="" value="" required>
        <div class="invalid-feedback">
          Email is required.
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="password">
          Password
        </label>
        <input type="text" class="'form-control" id="password" name="password" placeholder="" value="" required>
        <div class="invalid-feedback">
          Password is required.
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="user_groups">
          Groups
        </label>
        <select id="user_groups" name="user_groups" multiple>
          <c:forEach var="userGroup" items="${userGroups}" varStatus="status">
            <option value="${userGroup}">${userGroup}</option>
          </c:forEach>
        </select>
        <div class="invalid-feedback">
          Select an owner.
        </div>
      </div>
    </div>

    <button class ="btn btn-primary" type="submit" value="Submit">Submit</button>
  </form>
</t:pageTemplate>