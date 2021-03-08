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
        <form method="POST" action="/pizza-order">
            <label for="crust">
                <select class="form-control" id="crust" name="crust">
                    <option >Thin Crust</option>
                    <option >Original Crust</option>
                    <option >Pan</option>
                    <option >Stuffed Crust</option>
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
                <input class="form-check-input" type="checkbox" value="" id="Pep" name="pepperoni">
                <label class="form-check-label" for="Pep">
                    Pepperoni
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Sausage" name="sausage">
                <label class="form-check-label" for="Sausage">
                    Italian Sausage
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="GroundBeef" name="groundbeef">
                <label class="form-check-label" for="GroundBeef">
                    Ground Beef
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Mushrooms" name="mushrooms">
                <label class="form-check-label" for="Mushrooms">
                    Mushrooms
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Steak" name="steak">
                <label class="form-check-label" for="Steak">
                    Steak
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="BellPep" name="bellpepper">
                <label class="form-check-label" for="BellPep">
                    Bell Peppers
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Onions" name="onions">
                <label class="form-check-label" for="Onions">
                    Onions
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Olives" name="olives">
                <label class="form-check-label" for="Olives">
                    Olives
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Tomatoes" name="tomatoes">
                <label class="form-check-label" for="Tomatoes">
                    Tomatoes
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="Chicken" name="chicken">
                <label class="form-check-label" for="Chicken">
                    Chicken
                </label>
            </div>
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
