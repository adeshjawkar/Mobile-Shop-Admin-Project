<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filter by Price</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            /* Animated Gradient Background */
            background: linear-gradient(-45deg, #ff9a9e, #fad0c4, #a1c4fd, #c2e9fb);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .price-card {
            backdrop-filter: blur(12px);
            background: rgba(255, 255, 255, 0.15);
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            color: white;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            width: 330px;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .price-card h5 {
            font-weight: bold;
            margin-bottom: 10px;
            font-size: 1.4rem;
        }

        .price-card p {
            font-size: 0.95rem;
            opacity: 0.85;
        }

        .form-control {
            border-radius: 8px;
            border: none;
            padding: 10px;
            font-size: 0.95rem;
        }

        .btn-filter {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .btn-filter:hover {
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
            transform: scale(1.05);
        }

        .back-btn {
            background: transparent;
            border: 2px solid white;
            color: white;
            border-radius: 8px;
            padding: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .back-btn:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="price-card">
        <h5>💰 Filter by Price</h5>
        <p>View products within your budget range.</p>
        <form action="/filterByPrice" method="post">
            <div class="mb-2">
                <input type="number" class="form-control" name="min" placeholder="Min Price" required>
            </div>
            <div class="mb-3">
                <input type="number" class="form-control" name="max" placeholder="Max Price" required>
            </div>
            <button type="submit" class="btn btn-filter w-100 mb-2">Filter</button>
            <button type="button" class="btn back-btn w-100" onclick="history.back()">⬅ Go Back</button>
        </form>
    </div>

</body>
</html>
