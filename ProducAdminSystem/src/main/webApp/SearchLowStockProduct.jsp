<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Low Stock Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to bottom, #dfe9f3, #ffffff);
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card-low-stock {
            background: linear-gradient(135deg, #ff4d6d, #ff758c);
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            color: white;
            width: 350px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        .card-low-stock h4 {
            font-weight: bold;
        }

        .card-low-stock p {
            opacity: 0.9;
            font-size: 0.95rem;
        }

        .btn-low-stock {
            background: linear-gradient(135deg, #ff758c, #ffb199);
            border: none;
            border-radius: 10px;
            padding: 10px;
            font-weight: 600;
            color: white;
            transition: all 0.3s ease;
        }

        .btn-low-stock:hover {
            transform: scale(1.05);
            background: linear-gradient(135deg, #ffb199, #ff758c);
        }

        .btn-back {
            margin-top: 10px;
            background: transparent;
            border: 2px solid white;
            color: white;
            border-radius: 10px;
            padding: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            background: rgba(255,255,255,0.2);
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="card-low-stock">
        <h4>Low Stock Products</h4>
        <p>Check items with stock less than 5 units.</p>
        <form action="/lowStockList" method="post">
            <button type="submit" class="btn btn-low-stock w-100">View Low Stock</button>
            <button type="button" class="btn btn-back w-100" onclick="history.back()">⬅ Go Back</button>
        </form>
    </div>

</body>
</html>
