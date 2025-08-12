<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operation Status</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #89f7fe, #66a6ff);
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .container {
        background: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
        width: 350px;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
    }
    .status {
        font-size: 18px;
        padding: 10px;
        border-radius: 8px;
        display: inline-block;
        margin-top: 10px;
    }
    .success {
        background-color: #d4edda;
        color: #155724;
        border: 1px solid #c3e6cb;
    }
    .error {
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
    }
    .btn-back {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: linear-gradient(90deg, #ff758c, #ff7eb3);
        color: white;
        text-decoration: none;
        border-radius: 25px;
        font-weight: bold;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        transition: all 0.3s ease;
    }
    .btn-back:hover {
        transform: scale(1.05);
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>${msg}</h1>
        <hr>
        <div class="status ${status == 'success' ? 'success' : 'error'}">
            Status : ${status}
        </div>
        
        <!-- Go Back to Dashboard Button -->
        <a href="/dashboard" class="btn-back">⬅ Go Back to Dashboard</a>
    </div>
</body>
</html>
