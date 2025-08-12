<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8d7da; /* light red background */
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .btn-custom {
            background-color: #dc3545;
            color: white;
        }
        .btn-custom:hover {
            background-color: #b02a37;
        }
        .btn-success-custom {
            background-color: #28a745;
            color: white;
        }
        .btn-success-custom:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="card p-4 text-center" style="max-width: 400px; width: 100%;">
            <div class="alert alert-danger" role="alert">
                <strong>Login Failed!</strong> Invalid username or password.
            </div>
            <div class="d-grid gap-2">
                <a href="/" class="btn btn-custom">Back to Login</a>
                <a href="/newUser" class="btn btn-success-custom">Create New Account</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
