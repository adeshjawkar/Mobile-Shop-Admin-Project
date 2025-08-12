<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Admin</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: Arial, sans-serif;
        }
        .form-container {
            max-width: 700px;
            margin: 50px auto;
            background: #fff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }
        .btn-custom {
            background-color: #2575fc;
            color: #fff;
        }
        .btn-custom:hover {
            background-color: #1a5ccc;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2>Add New Admin</h2>
        <form method="POST" action="/addAdmin">
            
            <div class="mb-3">
                <label for="username" class="form-label">Username *</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password *</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <div class="mb-3">
                <label for="fullName" class="form-label">Full Name *</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
            </div>

            <div class="mb-3">
                <label for="gmail" class="form-label">Email (Gmail) *</label>
                <input type="email" class="form-control" id="gmail" name="gmail" required>
            </div>

            <div class="mb-3">
                <label for="contactNo" class="form-label">Contact Number *</label>
                <input type="tel" class="form-control" id="contactNo" name="contactNo" required>
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select class="form-select" id="role" name="role">
                    <option value="Admin">Admin</option>
                    <option value="SuperAdmin">Super Admin</option>
                    <option value="Staff">Staff</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address" name="address" rows="2"></textarea>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="city" class="form-label">City</label>
                    <input type="text" class="form-control" id="city" name="city">
                </div>
                <div class="col-md-4 mb-3">
                    <label for="state" class="form-label">State</label>
                    <input type="text" class="form-control" id="state" name="state">
                </div>
                <div class="col-md-4 mb-3">
                    <label for="country" class="form-label">Country</label>
                    <input type="text" class="form-control" id="country" name="country" value="India">
                </div>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-custom btn-lg">Save Admin</button>
                <a href="/" class="btn btn-secondary btn-lg">Back to Login</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
