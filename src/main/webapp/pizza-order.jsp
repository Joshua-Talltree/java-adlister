<%--
  Created by IntelliJ IDEA.
  User: joshuatalltree
  Date: 3/8/21
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
<div class="card col 6 m-3">
    <div class="card-header bg-primary">
        Order Your Pizza Here!
    </div>
    <div class="card-body">
        <h3>Construct Your Pizza...</h3>
        <form method="POST" action="/pizza-order" class="needs-validation" novalidate>
            <label for="crust">
                <select class="form-control" id="crust" name="crust">
                    <option>Thin Crust</option>
                    <option>Original Crust</option>
                    <option>Pan</option>
                    <option>Stuffed Crust</option>
                </select>
            </label>
            <label for="sauce">
                <select class="form-control" id="sauce" name="sauce">
                    <option>Original Sauce</option>
                    <option>BBQ Sauce</option>
                    <option>Alfredo Sauce</option>
                    <option>Pesto Sauce</option>
                </select>
            </label>
            <label for="size">
                <select class="form-control" id="size" name="size">
                    <option>XL (20")</option>
                    <option>LG (18")</option>
                    <option>M (16")</option>
                    <option>SM (14")</option>
                </select>
            </label>
            <br>
            <hr>
            <h3>Select Your Toppings....</h3>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="pepperoni" id="Pep" name="pepperoni">
                <label class="form-check-label" for="Pep" name="toppings">
                    Pepperoni
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="sausage" id="Sausage" name="sausage">
                <label class="form-check-label" for="Sausage" name="toppings">
                    Italian Sausage
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="ground_beef" id="GroundBeef" name="groundbeef">
                <label class="form-check-label" for="GroundBeef" name="toppings">
                    Ground Beef
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="mushrooms" id="Mushrooms" name="mushrooms">
                <label class="form-check-label" for="Mushrooms" name="toppings">
                    Mushrooms
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="steak" id="Steak" name="steak">
                <label class="form-check-label" for="Steak" name="toppings">
                    Steak
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="bell_pepper" id="BellPep" name="bellpepper">
                <label class="form-check-label" for="BellPep" name="toppings">
                    Bell Peppers
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="onions" id="Onions" name="onions">
                <label class="form-check-label" for="Onions" name="toppings">
                    Onions
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="olives" id="Olives" name="olives">
                <label class="form-check-label" for="Olives" name="toppings">
                    Olives
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="tomatoes" id="Tomatoes" name="tomatoes">
                <label class="form-check-label" for="Tomatoes" name="toppings">
                    Tomatoes
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="chicken" id="Chicken" name="chicken">
                <label class="form-check-label" for="Chicken" name="toppings">
                    Chicken
                </label>
            </div>
            <br>
            <hr>
            <h3>Please Input Your Information:</h3>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="validationCustom01">First name</label>
                    <input type="text" class="form-control" id="validationCustom01" value="Mark" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Last name</label>
                    <input type="text" class="form-control" id="validationCustom02" value="Otto" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="validationServer03">Street Address</label>
                    <input type="text" class="form-control" id="validationServer03"
                           aria-describedby="validationServer03Feedback">
                    <div id="validationServer03Feedback">
                        Please provide a valid street address.
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="validationCustom03">City</label>
                    <input type="text" class="form-control" id="validationCustom03" required>
                    <div class="invalid-feedback">
                        Please provide a valid city.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationCustom04">State</label>
                    <select class="custom-select" id="validationCustom04" required>
                        <option selected disabled value="">Choose...</option>
                        <option>Texas</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select a valid state.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationCustom05">Zip</label>
                    <input type="text" class="form-control" id="validationCustom05" required>
                    <div class="invalid-feedback">
                        Please provide a valid zip.
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                    <label class="form-check-label" for="invalidCheck">
                        Agree to terms and conditions
                    </label>
                    <div class="invalid-feedback">
                        You must agree before submitting.
                    </div>
                </div>
            </div>
            <br>
            <button type="Submit" class="btn btn-primary btn-lg" id="submitButton">Send Me To The Oven!</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>


</body>
</html>
