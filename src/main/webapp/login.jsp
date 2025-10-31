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
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #a9a9a9;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
        }

        /* Fixed top-left LNCT Logo */
        .fixed-logo {
            position: fixed;
            top: 15px;
            left: 15px;
            height: 70px;
            width: auto;
            z-index: 10;
        }

        /* Login Box */
        .box {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 15px;
            width: 370px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            max-width: 90%;
        }

        .logo {
            height: 80px;
            width: auto;
            margin-bottom: 15px;
        }

        .box h1 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
            line-height: 1.4;
            font-weight: 600;
        }

        form input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            font-size: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            outline: none;
            background-color: #f7f7f7;
        }

        form input:focus {
            border-color: #004e92;
            box-shadow: 0 0 5px rgba(0, 78, 146, 0.3);
        }

        form button {
            width: 100%;
            padding: 12px;
            background-color: #004e92;
            color: #fff;
            font-size: 16px;
            border: none;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 78, 146, 0.4);
        }

        form button:hover {
            background-color: #003b70;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 78, 146, 0.6);
        }

        /* ----------------------------------
           CREDIT SECTION (Improved Look)
        ---------------------------------- */
        .credit-section {
            position: absolute;
            bottom: 10px;
            width: 100%;
            text-align: center;
            font-size: 13px;
            color: #444;
            line-height: 1.6;
            font-weight: 500;
            animation: fadeIn 2s ease-in-out;
        }

        .credit-section .highlight {
            color: #004e92;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }

        .credit-section .name {
            color: #000;
            font-weight: 700;
            transition: 0.3s ease;
            position: relative;
        }

        .credit-section .name:hover {
            color: #004e92;
            text-shadow: 0 0 8px rgba(0, 78, 146, 0.7);
            cursor: pointer;
            transform: scale(1.05);
        }

        .credit-section .enroll {
            color: #555;
            font-size: 12px;
            transition: 0.3s ease;
        }

        .credit-section .name:hover + .enroll {
            color: #004e92;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ----------------------------------
           RESPONSIVE (MOBILE VIEW)
        ---------------------------------- */
        @media (max-width: 500px) {
            body {
                justify-content: flex-start;
                padding: 40px 10px;
            }

            .fixed-logo {
                height: 50px;
                top: 10px;
                left: 10px;
            }

            .box {
                width: 100%;
                margin-top: 50px;
                padding: 30px 20px;
                border-radius: 12px;
            }

            .logo {
                height: 60px;
            }

            .box h1 {
                font-size: 16px;
            }

            .credit-section {
                font-size: 11px;
                line-height: 1.4;
                bottom: 5px;
            }
        }
    </style>
</head>
<body>

    <!-- Fixed Top-left LNCT Logo -->
    <img src="image/lnct.png" alt="LNCT University Logo" class="fixed-logo">

    <!-- Login Box -->
    <div class="box">
        <img src="image/lnct.png" alt="LNCT Logo" class="logo">
        
        <form action="loginservlet" method="post">
            <input type="text" name="name" placeholder="Enter your Name" required>
            <input type="text" name="enrollment" placeholder="Enter your Enrollment" required>
            <button type="submit">Login</button>
        </form>
    </div>

    <!-- Stylish Credit Section -->
    <div class="credit-section">
        <p>🚀 <span class="highlight">Crafted with Passion</span> by</p>
        <p>
            <span class="name">Rahul Yadav</span> <span class="enroll">(LNCDBTC21096)</span> &nbsp; | &nbsp;
            <span class="name">Ravi Kumar Jha</span> <span class="enroll">(LNCDBTC31009)</span>
        </p>
    </div>

</body>
</html>
