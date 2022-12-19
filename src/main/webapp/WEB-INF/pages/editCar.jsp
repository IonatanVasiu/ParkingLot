<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:pageTemplate pageTitle="EditCar">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
            <%--@declare id=""--%><h1> Edit car </h1>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate">
                    License plate
                </label>
                <input type="text" class="'form-control" id="license_plate" name="license_plate" placeholder="" value="${car.licensePlate}" required>
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
                <input type="text" class="'form-control" id="parking_spot" name="parking_spot" placeholder="" value="${car.parkingSpot}" required>
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
                        <option value="${user.id}"${car.ownerName eq user.username ? 'selected' : ''}>${user.username}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Select an owner.
                </div>
            </div>
        </div>
        <hr class="mb-4">
        <input type="hidden" name="car_id" value="${car.id}" />
        <button class ="btn btn-primary" type="submit" value="Submit">Submit</button>
    </form>
</t:pageTemplate>