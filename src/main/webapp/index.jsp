<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>GENZ-COMMERCE · Amazon-style shop</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    /* ----- reset & variables (amazon-inspired, gen-z twist) ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f0f2f5;
      --surface: #ffffff;
      --primary: #131921;
      --secondary: #232f3e;
      --accent: #ff9900;
      --accent-hover: #e68a00;
      --muted: #565959;
      --light-muted: #c4c4c4;
      --radius: 12px;
      --shadow: 0 6px 18px rgba(0, 0, 0, 0.06);
      --border-light: #e7e7e7;
      --font: 'Inter', system-ui, -apple-system, sans-serif;
    }

    body {
      font-family: var(--font);
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
    }

    .container {
      max-width: 1480px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ----- header (amazon-style top bar) ----- */
    .header-top {
      background: var(--primary);
      color: white;
      padding: 8px 0;
      position: sticky;
      top: 0;
      z-index: 100;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 1.7rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: white;
      text-decoration: none;
      font-family: var(--font);
    }

    .brand i {
      color: var(--accent);
      font-size: 1.5rem;
    }

    .brand span {
      color: var(--accent);
    }

    /* search bar (amazon-style) */
    .search-wrap {
      display: flex;
      flex: 1 1 320px;
      max-width: 700px;
      background: white;
      border-radius: 40px;
      overflow: hidden;
      border: 2px solid transparent;
      transition: 0.2s;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(255, 153, 0, 0.2);
    }

    .search-wrap input {
      flex: 1;
      border: none;
      padding: 10px 18px;
      font-size: 0.95rem;
      outline: none;
      background: transparent;
      font-weight: 400;
    }

    .search-wrap button {
      background: var(--accent);
      border: none;
      padding: 0 22px;
      color: var(--primary);
      font-size: 1.2rem;
      cursor: pointer;
      transition: 0.15s;
    }

    .search-wrap button:hover {
      background: var(--accent-hover);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
      color: white;
    }

    .header-actions .icon-btn {
      background: transparent;
      border: none;
      color: white;
      font-size: 1.2rem;
      padding: 6px 10px;
      border-radius: 30px;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .header-actions .icon-btn:hover {
      background: rgba(255, 255, 255, 0.08);
    }

    .cart {
      background: rgba(255, 255, 255, 0.04);
      padding: 6px 16px 6px 12px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 600;
      border: 1px solid rgba(255, 255, 255, 0.06);
      color: white;
      text-decoration: none;
    }

    .cart .cart-count {
      background: var(--accent);
      color: var(--primary);
      font-weight: 700;
      padding: 0 8px;
      border-radius: 30px;
      font-size: 0.8rem;
      line-height: 1.8;
      min-width: 24px;
      text-align: center;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      color: white;
      font-size: 1.5rem;
      cursor: pointer;
    }

    /* secondary nav (amazon-style) */
    .nav-secondary {
      background: var(--secondary);
      padding: 4px 0;
      border-top: 1px solid rgba(255, 255, 255, 0.06);
      position: sticky;
      top: 60px;
      z-index: 99;
    }

    .nav-secondary ul {
      display: flex;
      gap: 6px;
      list-style: none;
      flex-wrap: wrap;
      padding: 6px 0;
    }

    .nav-secondary ul li a {
      color: rgba(255, 255, 255, 0.85);
      padding: 6px 14px;
      border-radius: 30px;
      font-size: 0.85rem;
      font-weight: 500;
      transition: 0.15s;
      text-decoration: none;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }

    .nav-secondary ul li a:hover {
      background: rgba(255, 255, 255, 0.08);
      color: white;
    }

    /* mobile menu */
    #mobileMenu {
      background: var(--primary);
      border-top: 1px solid rgba(255, 255, 255, 0.06);
      padding: 12px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      color: white;
      padding: 12px 16px;
      display: block;
      border-radius: 8px;
      text-decoration: none;
    }
    #mobileMenu ul li a:hover {
      background: rgba(255, 255, 255, 0.05);
    }

    /* ----- hero / banner (amazon-style) ----- */
    .hero-banner {
      background: linear-gradient(145deg, #1a2634, #0f1722);
      border-radius: var(--radius);
      margin: 24px 0 28px;
      padding: 48px 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      position: relative;
      overflow: hidden;
    }

    .hero-banner::after {
      content: "⚡";
      position: absolute;
      right: 20px;
      bottom: 10px;
      font-size: 8rem;
      opacity: 0.04;
    }

    .hero-banner h1 {
      font-size: 2.4rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 8px;
    }
    .hero-banner h1 i {
      color: var(--accent);
    }
    .hero-banner p {
      opacity: 0.75;
      font-size: 1.05rem;
      max-width: 500px;
    }
    .hero-banner .btn-group {
      margin-top: 18px;
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 0.95rem;
      transition: 0.15s;
      text-decoration: none;
    }

    .btn-primary {
      background: var(--accent);
      color: var(--primary);
    }
    .btn-primary:hover {
      background: var(--accent-hover);
      transform: scale(0.97);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.06);
      border: 1px solid rgba(255, 255, 255, 0.12);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.12);
    }

    /* ----- sections ----- */
    .section {
      padding: 28px 0 12px;
    }

    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 20px;
    }
    .section-header h2 {
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
    }
    .section-header .see-all {
      color: var(--accent);
      font-weight: 600;
      cursor: pointer;
    }
    .section-header .see-all:hover {
      text-decoration: underline;
    }

    .grid {
      display: grid;
      gap: 20px;
    }

    /* categories (amazon-style cards) */
    .categories {
      grid-template-columns: repeat(6, 1fr);
    }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 20px 10px;
      text-align: center;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
      transition: 0.2s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      border-color: var(--accent);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.06);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    /* products grid (amazon-style cards) */
    .products {
      grid-template-columns: repeat(4, 1fr);
    }
    .product {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
      transition: 0.2s;
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      box-shadow: 0 12px 28px rgba(0, 0, 0, 0.08);
      transform: translateY(-3px);
    }
    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f7f7f7;
    }
    .product-body {
      padding: 14px 16px 8px;
      flex: 1;
    }
    .product-body .product-title {
      font-weight: 600;
      font-size: 0.95rem;
      margin-bottom: 4px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--accent);
      background: rgba(255, 153, 0, 0.08);
      padding: 2px 10px;
      border-radius: 30px;
      display: inline-block;
      margin-bottom: 6px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 6px;
    }
    .price {
      font-weight: 700;
      font-size: 1.15rem;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.8rem;
      margin-left: 6px;
    }
    .rating {
      color: #f59e0b;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-footer {
      padding: 10px 16px 16px;
      display: flex;
      gap: 8px;
      border-top: 1px solid var(--border-light);
    }
    .add-btn {
      flex: 1;
      background: var(--accent);
      color: var(--primary);
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover {
      background: var(--accent-hover);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--border-light);
      padding: 8px 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
    }
    .wish-btn:hover {
      background: rgba(255, 153, 0, 0.06);
    }

    /* deal / flash sale (amazon-style) */
    .deal-card {
      background: white;
      border-radius: var(--radius);
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
    }
    .deal-card img {
      width: 40%;
      min-height: 260px;
      object-fit: cover;
      background: #eef2f6;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      min-width: 64px;
      text-align: center;
      border-radius: 12px;
    }
    .time-box div:first-child {
      font-size: 1.6rem;
      font-weight: 700;
      line-height: 1;
    }
    .time-box div:last-child {
      font-size: 0.65rem;
      opacity: 0.7;
      margin-top: 4px;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 6px 0 12px;
    }
    .deal-price .price {
      font-size: 2rem;
    }
    .badge-discount {
      background: #dc2626;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* testimonials (amazon-style) */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 0 16px;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      border-radius: var(--radius);
      padding: 20px;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
    }
    .testimonial .rating {
      font-size: 1rem;
    }

    /* newsletter (amazon style) */
    .newsletter {
      background: var(--secondary);
      border-radius: var(--radius);
      padding: 44px 32px;
      color: white;
      text-align: center;
    }
    .newsletter h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .newsletter p {
      opacity: 0.7;
      margin-bottom: 18px;
    }
    .newsletter form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 10px;
    }
    .newsletter input {
      padding: 14px 24px;
      border-radius: 40px;
      border: none;
      min-width: 260px;
      font-size: 1rem;
      background: rgba(255, 255, 255, 0.06);
      color: white;
      outline: 1px solid rgba(255, 255, 255, 0.1);
    }
    .newsletter input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter button {
      background: var(--accent);
      color: var(--primary);
      border: none;
      padding: 14px 32px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.15s;
    }
    .newsletter button:hover {
      background: var(--accent-hover);
    }

    /* footer (amazon-style) */
    footer {
      margin-top: 40px;
      background: var(--secondary);
      color: rgba(255, 255, 255, 0.7);
      padding: 32px 0 20px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }
    .footer-brand a {
      color: white;
      font-size: 1.6rem;
      font-weight: 700;
      text-decoration: none;
    }
    .footer-brand a i {
      color: var(--accent);
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links div strong {
      color: white;
      font-weight: 600;
      margin-bottom: 4px;
    }
    .footer-links a {
      color: rgba(255, 255, 255, 0.6);
      text-decoration: none;
    }
    .footer-links a:hover {
      color: white;
    }
    .footer-bottom {
      text-align: center;
      margin-top: 30px;
      font-size: 0.8rem;
      border-top: 1px solid rgba(255, 255, 255, 0.06);
      padding-top: 20px;
    }

    /* ----- responsive (amazon-style breakpoints) ----- */
    @media (max-width: 1024px) {
      .categories {
        grid-template-columns: repeat(3, 1fr);
      }
      .products {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (max-width: 820px) {
      .mobile-toggle {
        display: inline-block;
      }
      .nav-secondary ul {
        display: none;
      }
      .header-actions .icon-btn span {
        display: none;
      }
      .products {
        grid-template-columns: repeat(2, 1fr);
      }
      .hero-banner {
        padding: 32px 24px;
      }
      .hero-banner h1 {
        font-size: 1.8rem;
      }
      .deal-card img {
        width: 100%;
        max-height: 200px;
      }
      .deal-content {
        padding: 24px;
      }
    }

    @media (max-width: 540px) {
      .header-inner {
        flex-wrap: wrap;
      }
      .search-wrap {
        order: 3;
        flex: 1 1 100%;
      }
      .categories {
        grid-template-columns: repeat(2, 1fr);
      }
      .products {
        grid-template-columns: 1fr;
      }
      .hero-banner h1 {
        font-size: 1.5rem;
      }
      .timer {
        gap: 6px;
      }
      .time-box {
        min-width: 54px;
        padding: 8px 6px;
      }
      .time-box div:first-child {
        font-size: 1.2rem;
      }
    }
  </style>
</head>
<body>

<!-- ===== HEADER (amazon-style) ===== -->
<header class="header-top">
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-bolt"></i> GENZ<span>COMMERCE</span></a>
    </div>

    <div class="search-wrap">
      <input type="search" id="searchInput" placeholder="Search products, brands ..." />
      <button id="searchBtn"><i class="fas fa-search"></i></button>
    </div>

    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-user"></i><span>Sign in</span></button>
      <button class="icon-btn"><i class="far fa-heart"></i><span>Wishlist</span></button>
      <a class="cart" href="#" id="cartBtn">
        <i class="fas fa-shopping-cart"></i>
        <span class="cart-count" id="cartCount">0</span>
      </a>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Shop</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
      </ul>
    </div>
  </div>
</header>

<!-- ===== SECONDARY NAV (amazon-style) ===== -->
<nav class="nav-secondary">
  <div class="container">
    <ul>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
      <li><a href="#"><i class="fas fa-fire"></i> Best Sellers</a></li>
      <li><a href="#"><i class="fas fa-gem"></i> New Arrivals</a></li>
    </ul>
  </div>
</nav>

<main>
  <div class="container">
    <!-- HERO BANNER -->
    <section class="hero-banner">
      <div>
        <h1><i class="fas fa-bolt"></i> Drop like it's hot</h1>
        <p>Fresh kicks, tech, and streetwear — curated for the next-gen. New drops weekly.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-store"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-gem"></i> Explore deals</button>
        </div>
      </div>
      <div style="font-size:4rem;opacity:0.15;rotate:10deg;">✨</div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="section-header">
        <h2>Shop by category</h2>
        <span class="see-all">See all <i class="fas fa-arrow-right"></i></span>
      </div>
      <div class="grid categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="see-all">View all <i class="fas fa-arrow-right"></i></span>
      </div>
      <div class="grid products" id="productsGrid"></div>
    </section>

    <!-- DEAL / FLASH SALE -->
    <section class="section" id="deals">
      <div class="section-header">
        <h2><i class="fas fa-bolt" style="color:var(--accent);"></i> Flash sale</h2>
        <span class="see-all">Limited time</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" />
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p style="color:var(--muted);">Next-level performance, zero compromise.</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div class="deal-price">
            <span class="price">$999</span>
            <span class="old-price">$1,199</span>
            <span class="badge-discount">-17%</span>
          </div>
          <p style="margin-top:6px;"><strong>12</strong> items left at this price</p>
          <div style="margin-top:16px;">
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Grab now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section">
      <div class="section-header">
        <h2>Real reviews</h2>
        <span class="see-all">from the crew</span>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p style="margin:10px 0;">"Absolute fire 🔥 Shipping was faster than my wifi."</p>
          <div style="display:flex;align-items:center;gap:12px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar" />
            <div><strong>Ava</strong> <span style="color:var(--muted);font-size:0.8rem;">· verified</span></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <p style="margin:10px 0;">"Drip level 1000. My new fav store."</p>
          <div style="display:flex;align-items:center;gap:12px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar" />
            <div><strong>Mike</strong> <span style="color:var(--muted);font-size:0.8rem;">· frequent</span></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
      <div class="newsletter">
        <h3>✨ Join the squad</h3>
        <p>Get early access, exclusive drops & secret sales.</p>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="you@genz.com" required />
          <button type="submit" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:14px;font-size:0.9rem;display:none;"></div>
      </div>
    </section>
  </div>
</main>

<!-- FOOTER (amazon-style) -->
<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <a href="#"><i class="fas fa-bolt"></i> GENZ<span style="color:var(--accent);">COMMERCE</span></a>
      <p style="margin:10px 0 14px;color:rgba(255,255,255,0.5);">The ultimate destination for the next-gen.</p>
      <div style="display:flex;gap:12px;">
        <a href="#" style="color:rgba(255,255,255,0.5);"><i class="fab fa-tiktok"></i></a>
        <a href="#" style="color:rgba(255,255,255,0.5);"><i class="fab fa-instagram"></i></a>
        <a href="#" style="color:rgba(255,255,255,0.5);"><i class="fab fa-x-twitter"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div><strong>Support</strong><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
    </div>
  </div>
  <div class="footer-bottom">© <span id="year"></span> GENZ-COMMERCE · all rights reserved</div>
</footer>

<script>
  // ===== DATA (amazon-style product catalog) =====
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Streetwear', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Kicks', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 212, badge: '🔥', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Phones' },
    { id: 2, title: 'MacBook Pro 16"', price: 2299, rating: 5, reviews: 94, badge: '✨', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
    { id: 3, title: 'Apple Watch Ultra', price: 749, oldPrice: 849, rating: 5, reviews: 173, badge: '-12%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 4, title: 'Nike Dunk Low', price: 135, rating: 4, reviews: 88, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Kicks' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 41, badge: '📸', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
    { id: 6, title: 'Essentials Hoodie', price: 89, oldPrice: 120, rating: 4, reviews: 204, badge: '🌊', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Streetwear' },
    { id: 7, title: 'Tech Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 8
