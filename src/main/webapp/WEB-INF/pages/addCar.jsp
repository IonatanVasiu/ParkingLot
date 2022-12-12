<%--
  Created by IntelliJ IDEA.
  User: rrr
  Date: 06.12.2022
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
  <h1> Add car </h1>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="license_plate">
        License plate
      </label>
      <input type="text" class="'form-control" id="license_plate" name="license_plate" placeholder="" value="" required>
      <div class="invalid-feedback">
        License Plate is required.
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="parking_spot">
        Parking spot
      </label>
      <input type="text" class="'form-control" id="parking_spot" name="parking_spot" placeholder="" value="" required>
      <div class="invalid-feedback">
        Parking spot is required.
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="owner">
        Owner
      </label>
      <select id="owner" name="owner_id">
        <option value="">Choose...</option>
        <c:forEach var="user" items="${users}" varStatus="status">
          <option value="${user.id}">${user.username}</option>
        </c:forEach>
      </select>
      <div class="invalid-feedback">
        Select an owner.
      </div>
    </div>
  </div>

  <button type="submit" value="Submit">Submit</button>

</form>
<script src="form-validation.js"></script>
</body>
</html>
