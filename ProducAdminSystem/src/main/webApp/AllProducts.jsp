<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Table</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #ffecd2, #fcb69f, #a1c4fd, #c2e9fb);
            background-size: 400% 400%;
            animation: bgAnimation 12s ease infinite;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        h2 {
            color: #fff;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.4);
            font-weight: bold;
            animation: fadeIn 1s ease-in-out;
        }

        .table-container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0px 6px 30px rgba(0,0,0,0.2);
            animation: fadeUp 0.9s ease-in-out;
        }

        .table thead th {
            background: linear-gradient(135deg, #ff512f, #dd2476);
            color: white;
            text-align: center;
            font-size: 1.05rem;
            border: none;
        }

        .table tbody td {
            text-align: center;
            vertical-align: middle;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .table tbody tr:hover {
            background: rgba(255, 193, 7, 0.2);
            transform: scale(1.01);
            cursor: pointer;
        }

        .btn-back {
            background: linear-gradient(135deg, #1d976c, #93f9b9);
            color: white;
            font-weight: bold;
            border: none;
            padding: 8px 18px;
            border-radius: 25px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.3);
            transition: all 0.3s ease-in-out;
        }

        .btn-back:hover {
            background: linear-gradient(135deg, #93f9b9, #1d976c);
            transform: scale(1.08);
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes bgAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
    </style>
</head>
<body class="p-4">

<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-center flex-grow-1">📦 Product List</h2>
        <a href="/viewproduct" class="btn btn-back ms-3">⬅ Go Back</a>
    </div>

    <div class="table-container">
        <div class="table-responsive">
            <table class="table table-bordered table-hover align-middle">
                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Model Name</th>
                        <th>Brand</th>
                        <th>Price</th>
                        <th>Stock Quantity</th>
                        <th>Features</th>
                        <th>Warranty Period</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${pdlist}" var="st">
                        <tr>
                            <td>${st.prodid}</td>
                            <td>${st.model_name}</td>
                            <td>${st.brand}</td>
                            <td>₹${st.price}</td>
                            <td>${st.stock_quantity}</td>
                            <td>${st.features}</td>
                            <td>${st.warranty_period}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
