<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Store | Home</title>
    <style>
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: system-ui, -apple-system, sans-serif; background: var(--bg); color: var(--text-main); }

        /* Navigation Bar */
        .navbar { background: var(--card-bg); border-bottom: 1px solid var(--border); padding: 1rem 2rem; display: flex; align-items: center; justify-content: space-between; gap: 1.5rem; position: sticky; top: 0; z-index: 100; }
        .logo { font-size: 1.5rem; font-weight: 700; color: var(--primary); text-decoration: none; }
        .search-form { flex: 1; max-width: 500px; display: flex; }
        .search-input { width: 100%; padding: 0.6rem 1rem; border: 1px solid var(--border); border-radius: 6px 0 0 6px; outline: none; }
        .search-btn { background: var(--primary); color: white; border: none; padding: 0.6rem 1.2rem; border-radius: 0 6px 6px 0; cursor: pointer; }
        .nav-links { display: flex; gap: 1.25rem; align-items: center; list-style: none; }
        .nav-links a { text-decoration: none; color: var(--text-main); font-weight: 500; }

        /* Main Container */
        .container { max-width: 1200px; margin: 2rem auto; padding: 0 1rem; }

        /* Category Filter Bar */
        .categories { display: flex; gap: 0.75rem; margin-bottom: 2rem; overflow-x: auto; padding-bottom: 0.5rem; }
        .cat-chip { padding: 0.5rem 1rem; background: var(--card-bg); border: 1px solid var(--border); border-radius: 20px; text-decoration: none; color: var(--text-muted); font-size: 0.9rem; white-space: nowrap; }
        .cat-chip:hover, .cat-chip.active { background: var(--primary); color: white; border-color: var(--primary); }

        /* Product Grid */
        .product-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); gap: 1.5rem; }
        .product-card { background: var(--card-bg); border: 1px solid var(--border); border-radius: 8px; overflow: hidden; display: flex; flex-direction: column; transition: transform 0.2s, box-shadow 0.2s; }
        .product-card:hover { transform: translateY(-4px); box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1); }
        .img-container { height: 180px; background: #f1f5f9; display: flex; align-items: center; justify-content: center; }
        .img-container img { max-height: 100%; max-width: 100%; object-fit: contain; }
        .product-info { padding: 1rem; display: flex; flex-direction: column; flex-grow: 1; }
        .product-name { font-size: 1rem; font-weight: 600; margin-bottom: 0.5rem; line-height: 1.3; }
        .product-price { font-size: 1.15rem; font-weight: 700; color: var(--text-main); margin-top: auto; padding-bottom: 0.75rem; }
        .btn-add-cart { width: 100%; background: var(--primary); color: white; border: none; padding: 0.6rem; border-radius: 6px; font-weight: 600; cursor: pointer; transition: background 0.2s; }
        .btn-add-cart:hover { background: var(--primary-dark); }
        
        .empty-state { text-align: center; padding: 4rem 1rem; color: var(--text-muted); }
    </style>
</head>
<body>

    <!-- Header Navigation -->
    <header class="navbar">
        <a href="${pageContext.request.contextPath}/" class="logo">ShopWave</a>
        
        <form action="${pageContext.request.contextPath}/search" method="GET" class="search-form">
            <input type="text" name="q" value="${param.q}" placeholder="Search products, brands..." class="search-input" required>
            <button type="submit" class="search-btn">Search</button>
        </form>

        <ul class="nav-links">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <li>Hello, <strong>${sessionScope.user.firstName}</strong></li>
                    <li><a href="${pageContext.request.contextPath}/account">Account</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/register.jsp">Register</a></li>
                </c:otherwise>
            </c:choose>
            <li>
                <a href="${pageContext.request.contextPath}/cart">
                    Cart (<span id="cart-count">${sessionScope.cart != null ? sessionScope.cart.itemCount : 0}</span>)
                </a>
            </li>
        </ul>
    </header>

    <!-- Main Content -->
    <main class="container">

        <!-- Dynamic Category Chips -->
        <nav class="categories">
            <a href="${pageContext.request.contextPath}/products" class="cat-chip ${empty param.category ? 'active' : ''}">All</a>
            <c:forEach var="category" items="${categoryList}">
                <a href="${pageContext.request.contextPath}/products?category=${category.id}" 
                   class="cat-chip ${param.category == category.id ? 'active' : ''}">
                    ${category.name}
                </a>
            </c:forEach>
        </nav>

        <!-- Product Listing Grid -->
        <section class="product-grid">
            <c:choose>
                <c:when test="${not empty productList}">
                    <c:forEach var="product" items="${productList}">
                        <article class="product-card">
                            <div class="img-container">
                                <img src="${not empty product.imageUrl ? product.imageUrl : 'https://via.placeholder.com/200'}" alt="${product.name}">
                            </div>
                            <div class="product-info">
                                <h3 class="product-name">${product.name}</h3>
                                <div class="product-price">
                                    <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$" />
                                </div>
                                
                                <form action="${pageContext.request.contextPath}/cart/add" method="POST">
                                    <input type="hidden" name="productId" value="${product.id}">
                                    <input type="hidden" name="quantity" value="1">
                                    <button type="submit" class="btn-add-cart">Add to Cart</button>
                                </form>
                            </div>
                        </article>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="empty-state">
                        <h3>No products found</h3>
                        <p>Try searching with different terms or check back later.</p>
                    </div>
                </c:otherwise>
            </c:choose>
        </section>

    </main>

</body>
</html>
