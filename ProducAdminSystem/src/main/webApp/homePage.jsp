<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
        }
        .card {
            transition: 0.3s;
            cursor: pointer;
            border-radius: 15px;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 6px 20px rgba(0,0,0,0.15);
        }
        .card-icon {
            font-size: 50px;
            color: #007bff;
            margin-bottom: 15px;
        }
        .page-title {
            text-align: center;
            margin-top: 30px;
            margin-bottom: 40px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="page-title">📦 Product Management Dashboard</h2>
    <div class="row g-4">
        
        <!-- Add New Product -->
        <div class="col-md-3">
            <div class="card text-center p-4 bg-light border-0 shadow-sm">
                <div class="card-icon">➕</div>
                <h5 class="card-title">Add New Product</h5>
                <p class="text-muted">Create a new product entry with all details.</p>
                <a href="/addnew" class="btn btn-primary">Go</a>
            </div>
        </div>

        <!-- View Products -->
        <div class="col-md-3">
            <div class="card text-center p-4 bg-light border-0 shadow-sm">
                <div class="card-icon">📄</div>
                <h5 class="card-title">View Products</h5>
                <p class="text-muted">Browse and search products with filters.</p>
                <a href="/viewproduct" class="btn btn-success">Go</a>
            </div>
        </div>

        <!-- Update Product -->
        <div class="col-md-3">
            <div class="card text-center p-4 bg-light border-0 shadow-sm">
                <div class="card-icon">✏️</div>
                <h5 class="card-title">Update Product</h5>
                <p class="text-muted">Modify details like price, stock, and warranty.</p>
                <a href="/update" class="btn btn-warning">Go</a>
            </div>
        </div>

        <!-- Delete Product -->
        <div class="col-md-3">
            <div class="card text-center p-4 bg-light border-0 shadow-sm">
                <div class="card-icon">🗑️</div>
                <h5 class="card-title">Delete Product</h5>
                <p class="text-muted">Remove discontinued or unwanted models.</p>
                <a href="/delete" class="btn btn-danger">Go</a>
            </div>
        </div>

    </div>
</div>

</body>
</html>
