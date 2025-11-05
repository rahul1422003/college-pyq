<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LNCT Login Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #004e92, #000428);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            overflow-x: hidden;
            padding: 20px;
            position: relative;
        }

        .fixed-logo {
            position: fixed;
            top: 20px;
            left: 20px;
            height: 65px;
            width: auto;
            z-index: 2;
        }

        .box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 40px 30px;
            width: 370px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            z-index: 1;
            animation: fadeIn 1.2s ease-in-out;
        }

        .logo {
            height: 80px;
            margin-bottom: 15px;
            animation: zoomIn 1.2s ease-in-out;
        }

        form input, form select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            font-size: 15px;
            border: none;
            border-radius: 8px;
            outline: none;
            background: rgba(255, 255, 255, 0.9);
            transition: all 0.3s ease;
        }

        form input:focus, form select:focus {
            background: #fff;
            box-shadow: 0 0 8px rgba(0, 78, 146, 0.6);
        }

        form button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #004e92, #0072ff);
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 5px 15px rgba(0, 114, 255, 0.4);
        }

        form button:hover {
            background: linear-gradient(135deg, #003b70, #004e92);
            transform: translateY(-2px);
        }

        .credit-section {
            text-align: center;
            font-size: 13px;
            color: #f0f0f0;
            margin-top: 15px;
            line-height: 1.5;
            animation: fadeIn 1.5s ease-in-out;
        }

        .credit-section .highlight {
            color: #00c3ff;
            font-weight: 700;
            text-transform: uppercase;
        }

        .credit-section .name {
            color: #fff;
            font-weight: 700;
            transition: 0.3s;
        }

        .credit-section .name:hover {
            color: #00c3ff;
            text-shadow: 0 0 8px rgba(0, 195, 255, 0.7);
            transform: scale(1.05);
        }

        .credit-section .enroll {
            color: #ddd;
            font-size: 12px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes zoomIn {
            from { transform: scale(0.8); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }

        @media (max-width: 500px) {
            body {
                padding: 15px;
            }
            .fixed-logo {
                height: 50px;
                top: 10px;
                left: 10px;
            }
            .box {
                width: 100%;
                padding: 30px 20px;
                margin-top: 70px;
            }
            .logo {
                height: 60px;
            }
            .credit-section {
                font-size: 11px;
            }
        }
    </style>

    <script>
        function validateForm() {
            const enrollment = document.getElementsByName("enrollment")[0].value.trim();
            const pattern = /^L[A-Za-z]{6}[0-9]{5}$/;
            if (!pattern.test(enrollment)) {
                alert("❌ Invalid Enrollment Number!\nIt must start with 'L', have 7 letters and 5 digits (total 12 characters).");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <img src="image/lnct.png" alt="LNCT University Logo" class="fixed-logo">

    <div class="box">
        <img src="image/lnct.png" alt="LNCT Logo" class="logo">
        
        <form action="loginservlet" method="post" onsubmit="return validateForm()">
            <input type="text" name="name" placeholder="Enter your Name" required>
            <input type="text" name="enrollment" placeholder="Enter your Enrollment" required>
            <select name="semester" required>
                <option value="" disabled selected>Select your Semester</option>
                <option value="Semester 1">Semester 1</option>
                <option value="Semester 2">Semester 2</option>
                <option value="Semester 3">Semester 3</option>
                <option value="Semester 4">Semester 4</option>
                <option value="Semester 5">Semester 5</option>
                <option value="Semester 6">Semester 6</option>
                <option value="Semester 7">Semester 7</option>
                <option value="Semester 8">Semester 8</option>
            </select>
            <button type="submit">Login</button>
        </form>
    </div>

    <div class="credit-section">
        🚀 <span class="highlight">Crafted with Passion</span> by <br>
        <span class="name">Rahul Yadav</span> <span class="enroll">(LNCDBTC21096)</span> &nbsp; | &nbsp;
        <span class="name">Ravi Kumar Jha</span> <span class="enroll">(LNCDBTC31009)</span>
    </div>
</body>
</html>
