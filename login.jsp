<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f1f1f1;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }

        .popup.show {
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <c:if test="${not empty error}">
                    <div class="alert alert-danger" role="alert">
                        ${error}
                    </div>
                </c:if>
                <form id="loginForm" action="login" method="post">
                    <div class="form-group">
                        <label for="id">Id:</label>
                        <input type="text" id="id" name="id" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>
    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            // Perform any necessary form validation or other processing
            var passwordInput = document.getElementById("password");
            var passwordValue = passwordInput.value;
            var errorMessage = document.querySelector(".alert-danger");

            if (passwordValue === "") {
                event.preventDefault(); // Prevent the form from submitting

                errorMessage.textContent = "Please enter a password.";
                errorMessage.style.display = "block";
            } else {
                // Hide the error message
                errorMessage.style.display = "none";
                // Display the pop-up message
                alert("Login successful!");
            }
        });
    </script>
</body>
</html>

