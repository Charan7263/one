<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping - E-Commerce Store</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body {
            background-color: #f1f3f6;
            color: #212121;
        }
        /* Top Navigation */
        .navbar {
            background-color: #2874f0;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 12px 20px;
            gap: 24px;
        }
        .logo {
            color: #ffffff;
            font-size: 20px;
            font-weight: bold;
            font-style: italic;
            text-decoration: none;
        }
        .search-box {
            display: flex;
            width: 450px;
            background: #fff;
            border-radius: 2px;
            overflow: hidden;
        }
        .search-box input {
            border: none;
            padding: 9px 16px;
            outline: none;
            width: 100%;
            font-size: 14px;
        }
        .search-box button {
            background: #fff;
            border: none;
            padding: 0 14px;
            cursor: pointer;
            color: #2874f0;
            font-weight: bold;
        }
        .nav-links a {
            color: #ffffff;
            text-decoration: none;
            font-size: 15px;
            font-weight: 600;
            margin-left: 20px;
        }
        /* Category Navigation */
        .category-bar {
            background: #ffffff;
            display: flex;
            justify-content: space-around;
            padding: 12px 10%;
            box-shadow: 0 1px 1px 0 rgba(0,0,0,.16);
            margin-bottom: 12px;
        }
        .category-item {
            text-align: center;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
        }
        /* Main Container */
        .container {
            max-width: 1240px;
            margin: 0 auto;
            padding: 0 16px;
        }
        .banner {
            background: #ffffff;
            padding: 40px;
            text-align: center;
            border-radius: 4px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            margin-bottom: 16px;
        }
        /* Product Grid */
        .section-title {
            font-size: 20px;
            font-weight: 600;
            margin: 16px 0;
        }
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 16px;
        }
        .product-card {
            background: #ffffff;
            padding: 16px;
            border-radius: 4px;
            text-align: center;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            transition: transform 0.2s ease;
        }
        .product-card:hover {
            transform: translateY(-2px);
        }
        .product-img {
            width: 100%;
            height: 160px;
            background-color: #eee;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #777;
            font-size: 13px;
        }
        .product-name {
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 6px;
        }
        .product-price {
            font-size: 16px;
            font-weight: bold;
            color: #388e3c;
            margin-bottom: 8px;
        }
        .btn-add {
            background-color: #fb641b;
            color: #fff;
            border: none;
            padding: 8px 14px;
            font-size: 13px;
            font-weight: 600;
            border-radius: 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <!-- Header Navigation -->
    <header class="navbar">
        <a href="index.jsp" class="logo">ShopKart</a>
        <form action="search" method="get" class="search-box">
            <input type="text" name="q" placeholder="Search for products, brands and more">
            <button type="submit">Search</button>
        </form>
        <nav class="nav-links">
            <a href="login.jsp">Login</a>
            <a href="cart.jsp">Cart</a>
        </nav>
    </header>

    <!-- Category Strip -->
    <div class="category-bar">
        <div class="category-item">Electronics</div>
        <div class="category-item">Appliances</div>
        <div class="category-item">Men</div>
        <div class="category-item">Women</div>
        <div class="category-item">Home & Furniture</div>
        <div class="category-item">Books</div>
    </div>

    <!-- Page Content -->
    <div class="container">
        <div class="banner">
            <h2>Big Savings on Electronics & Fashion</h2>
            <p style="color: #666; margin-top: 8px;">Explore deals up to 60% off across top categories</p>
        </div>

        <h3 class="section-title">Featured Products</h3>

        <div class="product-grid">
            <!-- Example dynamic block using JSTL: iterates over a 'productList' attribute set by a Servlet -->
            <c:choose>
                <c:when test="${not empty productList}">
                    <c:forEach var="product" items="${productList}">
                        <div class="product-card">
                            <div class="product-img">
                                <c:choose>
                                    <c:when test="${not empty product.imageUrl}">
                                        <img src="${product.imageUrl}" alt="${product.name}" style="max-height:100%; max-width:100%;">
                                    </c:when>
                                    <c:otherwise>No Image</c:otherwise>
                                </c:choose>
                            </div>
                            <div class="product-name">${product.name}</div>
                            <div class="product-price">&#8377; ${product.price}</div>
                            <form action="cart" method="post">
                                <input type="hidden" name="productId" value="${product.id}">
                                <button type="submit" class="btn-add">Add to Cart</button>
                            </form>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <!-- Fallback static placeholders if no servlet attribute is passed -->
                    <div class="product-card">
                        <div class="product-img">Smartphone Preview</div>
                        <div class="product-name">Wireless Headphones</div>
                        <div class="product-price">&#8377; 1,999</div>
                        <button class="btn-add">Add to Cart</button>
                    </div>
                    <div class="product-card">
                        <div class="product-img">Watch Preview</div>
                        <div class="product-name">Smart Fitness Watch</div>
                        <div class="product-price">&#8377; 2,499</div>
                        <button class="btn-add">Add to Cart</button>
                    </div>
                    <div class="product-card">
                        <div class="product-img">Laptop Preview</div>
                        <div class="product-name">15.6" Casual Backpack</div>
                        <div class="product-price">&#8377; 899</div>
                        <button class="btn-add">Add to Cart</button>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

</body>
</html>
