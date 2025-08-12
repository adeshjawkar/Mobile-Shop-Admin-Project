<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f0f4ff, #e6ecff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .dashboard-title {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            color: #333;
            letter-spacing: 1px;
        }
        .card {
            border: none;
            border-radius: 15px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease-in-out;
            color: white;
        }
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
        }
        .card-icon {
            font-size: 40px;
            margin-bottom: 15px;
        }
        .card p {
            font-size: 0.95rem;
            margin-bottom: 15px;
        }
        /* Gradient Backgrounds for Cards */
        .products-card { background: linear-gradient(135deg, #4facfe, #00f2fe); }
        .search-card { background: linear-gradient(135deg, #43e97b, #38f9d7); }
        .price-card { background: linear-gradient(135deg, #f7971e, #ffd200); color: #333; }
        .lowstock-card { background: linear-gradient(135deg, #ff0844, #ffb199); }
        .btn-custom {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 10px;
            transition: background 0.3s;
        }
        .btn-custom:hover {
            background: rgba(255, 255, 255, 0.4);
            color: #fff;
        }
    </style>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="container py-4">

    <!-- Go Back Button -->
    <div class="mb-3">
        <a href="/dashboard" class="btn btn-outline-primary">
            <i class="fas fa-arrow-left"></i> Go Back
        </a>
    </div>

    <div class="dashboard-title">📦 Product Management Dashboard</div>
    <div class="row g-4">
        
        <!-- List of Products -->
        <div class="col-md-6 col-lg-3">
            <div class="card products-card">
                <div class="card-icon"><i class="fas fa-list"></i></div>
                <h5>List of Products</h5>
                <p>Displays all available products in the store.</p>
                <a href="/all" class="btn btn-custom w-100">View Products</a>
            </div>
        </div>

        <!-- Search by Model Name -->
        <div class="col-md-6 col-lg-3">
            <div class="card search-card">
                <div class="card-icon"><i class="fas fa-search"></i></div>
                <h5>Search by Model</h5>
                <p>Find products by entering a model name.</p>
                <a href="/modelname" class="btn btn-custom w-100">Search Now</a>
            </div>
        </div>

        <!-- Filter by Price Range -->
        <div class="col-md-6 col-lg-3">
            <div class="card price-card">
                <div class="card-icon"><i class="fas fa-tags"></i></div>
                <h5>Filter by Price</h5>
                <p>View products within your budget range.</p>
                <a href="/pricerange" class="btn btn-dark w-100">Filter</a>
            </div>
        </div>

        <!-- Low Stock Products -->
        <div class="col-md-6 col-lg-3">
            <div class="card lowstock-card">
                <div class="card-icon"><i class="fas fa-exclamation-triangle"></i></div>
                <h5>Low Stock Products</h5>
                <p>Check items with stock less than 5 units.</p>
                <a href="/searchLowStock" class="btn btn-custom w-100">View Low Stock</a>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
