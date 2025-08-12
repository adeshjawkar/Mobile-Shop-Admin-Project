<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Mobile Phone</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Animated background */
        body {
            background: linear-gradient(-45deg, #0f2027, #203a43, #2c5364, #1f1c2c);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            font-family: "Poppins", sans-serif;
            color: white;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Glass effect container */
        .search-box {
            backdrop-filter: blur(20px);
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 35px;
            max-width: 480px;
            margin: 80px auto;
            box-shadow: 0 0 25px rgba(0, 255, 255, 0.3);
            transition: 0.3s ease;
        }

        .search-box:hover {
            box-shadow: 0 0 40px rgba(0, 255, 255, 0.6);
            transform: translateY(-5px);
        }

        /* Heading with neon text */
        h3 {
            font-weight: bold;
            font-size: 1.8rem;
            text-align: center;
            margin-bottom: 20px;
            color: #00eaff;
            text-shadow: 0 0 10px #00eaff, 0 0 20px #00eaff;
        }

        label {
            font-weight: 500;
            color: #ddd;
        }

        /* Input field with glow */
        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(0, 234, 255, 0.5);
            border-radius: 12px;
            color: white;
            padding: 12px;
            transition: 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: #00eaff;
            box-shadow: 0 0 15px #00eaff;
            background: rgba(255, 255, 255, 0.15);
        }

        /* Button with neon glow animation */
        .search-btn {
            background: linear-gradient(90deg, #00eaff, #00ff88);
            border: none;
            border-radius: 12px;
            padding: 12px;
            color: #000;
            font-weight: bold;
            letter-spacing: 1px;
            transition: 0.3s ease;
            box-shadow: 0 0 15px rgba(0, 255, 200, 0.6);
        }

        .search-btn:hover {
            background: linear-gradient(90deg, #00ff88, #00eaff);
            box-shadow: 0 0 25px rgba(0, 255, 200, 1);
            transform: scale(1.05);
        }

        /* Go Back button */
        .back-btn {
            background: transparent;
            border: 2px solid #00eaff;
            color: #00eaff;
            border-radius: 12px;
            padding: 10px;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .back-btn:hover {
            background: #00eaff;
            color: black;
            box-shadow: 0 0 15px #00eaff;
        }
    </style>
</head>
<body>
    <div class="search-box">
        <h3>🔍 Search Mobile Phone</h3>
        <form action="/search" method="post">
            <div class="mb-3">
                <label for="modelName" class="form-label">Model Name</label>
                <input type="text" class="form-control" id="modelName" name="model_name" placeholder="Enter model name" required>
            </div>
            <div class="d-grid mb-2">
                <button type="submit" class="btn search-btn">Search</button>
            </div>
            <div class="d-grid">
                <button type="button" class="btn back-btn" onclick="history.back()">⬅ Go Back</button>
            </div>
        </form>
    </div>
</body>
</html>
