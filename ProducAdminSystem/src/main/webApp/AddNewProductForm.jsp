<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add New Mobile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
<style>
    /* Background gradient animation */
    body {
        background: linear-gradient(135deg, #ff9a9e, #fad0c4, #a1c4fd, #c2e9fb);
        background-size: 300% 300%;
        animation: gradientMove 8s ease infinite;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }
    @keyframes gradientMove {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Glassmorphism card */
    .form-card {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(12px);
        padding: 35px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        width: 100%;
        max-width: 750px;
        color: white;
    }

    h2 {
        text-align: center;
        font-weight: bold;
        margin-bottom: 25px;
    }

    /* Input fields */
    .form-control, .form-select {
        background: rgba(255, 255, 255, 0.2);
        border: none;
        border-radius: 12px;
        color: white;
    }
    .form-control::placeholder,
    .form-select {
        color: rgba(255,255,255,0.8);
    }

    /* Input group icons */
    .input-group-text {
        background: rgba(255,255,255,0.25);
        border: none;
        color: white;
    }

    /* Buttons */
    .btn-custom {
        background: linear-gradient(45deg, #56ccf2, #2f80ed);
        border: none;
        padding: 12px;
        border-radius: 12px;
        font-weight: bold;
        transition: transform 0.2s;
    }
    .btn-custom:hover {
        transform: scale(1.05);
    }

    .btn-back {
        background: rgba(255,255,255,0.2);
        border: none;
        border-radius: 12px;
        color: white;
        transition: background 0.3s;
    }
    .btn-back:hover {
        background: rgba(255,255,255,0.35);
    }
</style>
</head>
<body>

<div class="form-card">

    <!-- Go Back -->
    <div class="mb-3">
        <a href="/dashboard" class="btn btn-back">
            <i class="bi bi-arrow-left-circle"></i> Go Back
        </a>
    </div>

    <h2><i class="bi bi-phone"></i> Add New Mobile</h2>
    <form action="/addprod" method="post">

        <!-- Model Name -->
        <div class="mb-3">
            <label class="form-label">Model Name</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-phone"></i></span>
                <input type="text" class="form-control" name="model_name" placeholder="Enter model name" required>
            </div>
        </div>

        <!-- Brand -->
        <div class="mb-3">
            <label class="form-label">Brand</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-tags"></i></span>
                <select class="form-select" name="brand" required>
                    <option value="">Select Brand</option>
                    <option>Samsung</option>
                    <option>Apple</option>
                    <option>OnePlus</option>
                    <option>Xiaomi</option>
                    <option>Oppo</option>
                    <option>Vivo</option>
                    <option>Realme</option>
                    <option>Motorola</option>
                    <option>Nokia</option>
                </select>
            </div>
        </div>

        <!-- Price -->
        <div class="mb-3">
            <label class="form-label">Price (₹)</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-currency-rupee"></i></span>
                <input type="number" step="0.01" class="form-control" name="price" placeholder="Enter price" required>
            </div>
        </div>

        <!-- Stock -->
        <div class="mb-3">
            <label class="form-label">Stock Quantity</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-boxes"></i></span>
                <input type="number" class="form-control" name="stock_quantity" placeholder="Enter stock quantity" required>
            </div>
        </div>

        <!-- Features -->
        <div class="mb-3">
            <label class="form-label">Features</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-list-check"></i></span>
                <textarea class="form-control" name="features" rows="3" placeholder="Enter product features"></textarea>
            </div>
        </div>

        <!-- Warranty -->
        <div class="mb-3">
            <label class="form-label">Warranty Period</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-shield-check"></i></span>
                <input type="text" class="form-control" name="warranty_period" placeholder="e.g., 1 Year">
            </div>
        </div>

        <!-- Submit -->
        <div class="d-grid">
            <button type="submit" class="btn btn-custom">
                <i class="bi bi-save"></i> Save Product
            </button>
        </div>
    </form>
</div>

</body>
</html>
