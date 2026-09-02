<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>GENZ-COMMERCE · shop</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #faf9fc;
      --surface: #ffffff;
      --primary: #1e1b2e;
      --accent: #7c3aed;
      --accent-soft: #a78bfa;
      --muted: #6b6a7a;
      --radius: 20px;
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.04);
      --glass: rgba(255, 255, 255, 0.7);
      --border-light: rgba(124, 58, 237, 0.08);
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      padding: 0 0 2rem;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ===== HEADER / GEN-Z VIBE ===== */
    header {
      background: var(--glass);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid var(--border-light);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 12px 0;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      color: var(--primary);
    }

    .brand i {
      color: var(--accent);
      background: rgba(124, 58, 237, 0.12);
      padding: 6px 8px;
      border-radius: 14px;
      font-size: 1.4rem;
    }

    .brand span {
      background: linear-gradient(135deg, var(--accent), #c084fc);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    nav.main-nav li a:hover {
      background: var(--accent);
      color: white;
      box-shadow: 0 4px 12px rgba(124, 58, 237, 0.25);
    }

    .search {
      display: flex;
      align-items: center;
      background: white;
      padding: 4px 8px 4px 16px;
      border-radius: 40px;
      border: 1px solid var(--border-light);
      min-width: 200px;
      transition: 0.2s;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    }

    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(124, 58, 237, 0.08);
    }

    .search input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
      font-weight: 400;
    }

    .search button {
      background: var(--accent);
      border: none;
      color: white;
      width: 36px;
      height: 36px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
    }

    .search button:hover {
      background: #6d28d9;
      transform: scale(0.95);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      padding: 8px 10px;
      border-radius: 40px;
      color: var(--primary);
      cursor: pointer;
      transition: 0.15s;
    }

    .icon-btn:hover {
      background: rgba(124, 58, 237, 0.08);
      color: var(--accent);
    }

    .cart {
      position: relative;
      display: flex;
      align-items: center;
      gap: 6px;
      background: white;
      padding: 6px 14px 6px 10px;
      border-radius: 40px;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
      font-weight: 600;
    }

    .cart-count {
      background: var(--accent);
      color: white;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      font-size: 0.7rem;
      font-weight: 700;
      margin-left: 2px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
    }

    #mobileMenu {
      background: white;
      border-top: 1px solid var(--border-light);
      padding: 12px 0;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
      padding: 0 8px;
    }

    #mobileMenu ul li a {
      padding: 12px 16px;
      border-radius: 16px;
      display: block;
      font-weight: 500;
      background: var(--bg);
    }

    /* ===== HERO ===== */
    .hero {
      background: linear-gradient(145deg, #1e1b2e 0%, #2d2a44 100%);
      border-radius: var(--radius);
      margin: 24px 0 32px;
      padding: 60px 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
    }

    .hero::after {
      content: "⚡";
      position: absolute;
      right: 20px;
      bottom: 10px;
      font-size: 10rem;
      opacity: 0.06;
      transform: rotate(12deg);
    }

    .hero-content {
      max-width: 600px;
      z-index: 2;
    }

    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2.8rem;
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 16px;
    }

    .hero h1 i {
      color: var(--accent-soft);
      margin-right: 6px;
    }

    .hero p {
      opacity: 0.8;
      font-size: 1.1rem;
      margin-bottom: 24px;
    }

    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }

    .btn {
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-size: 0.95rem;
      transition: 0.2s;
    }

    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 6px 16px rgba(124, 58, 237, 0.35);
    }

    .btn-primary:hover {
      background: #6d28d9;
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.15);
      color: white;
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.12);
    }

    /* ===== SECTIONS ===== */
    .section {
      padding: 40px 0 24px;
    }

    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 24px;
    }

    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 600;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
    }

    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
      font-size: 0.95rem;
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* categories */
    .categories {
      grid-template-columns: repeat(6, 1fr);
    }

    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
      transition: 0.2s;
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 20px 30px rgba(124, 58, 237, 0.06);
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

    /* products */
    .products {
      grid-template-columns: repeat(4, 1fr);
    }

    .product {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid var(--border-light);
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }

    .product:hover {
      transform: scale(1.01);
      border-color: var(--accent-soft);
    }

    .product img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f3f0ff;
    }

    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }

    .product-body .category-tag {
      font-size: 0.7rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      color: var(--accent);
      background: rgba(124, 58, 237, 0.06);
      display: inline-block;
      padding: 4px 10px;
      border-radius: 40px;
      margin-bottom: 8px;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 6px;
    }

    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }

    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.85rem;
      margin-left: 6px;
      font-weight: 400;
    }

    .rating {
      color: #fbbf24;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 8px;
      border-top: 1px solid rgba(0,0,0,0.02);
    }

    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .add-btn:hover {
      background: var(--accent);
      transform: scale(0.97);
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
      background: rgba(124, 58, 237, 0.04);
      border-color: var(--accent);
    }

    /* DEAL / FLASH */
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
      width: 45%;
      min-height: 280px;
      object-fit: cover;
      background: #ede9fe;
    }

    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
      margin-bottom: 6px;
    }

    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 12px 10px;
      min-width: 68px;
      text-align: center;
      border-radius: 16px;
    }

    .time-box div:first-child {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1;
    }

    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.7;
      margin-top: 4px;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 8px 0 12px;
    }

    .deal-price .price {
      font-size: 2rem;
    }

    .badge-discount {
      background: #ef4444;
      color: white;
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* testimonials */
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
      font-size: 1.1rem;
    }

    /* newsletter */
    .newsletter {
      background: var(--primary);
      border-radius: var(--radius);
      padding: 48px 32px;
      color: white;
      text-align: center;
    }

    .newsletter h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
    }

    .newsletter p {
      opacity: 0.7;
      margin-bottom: 20px;
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
      background: rgba(255,255,255,0.08);
      color: white;
      outline: 1px solid rgba(255,255,255,0.1);
    }

    .newsletter input::placeholder {
      color: rgba(255,255,255,0.6);
    }

    .newsletter button {
      background: var(--accent);
      color: white;
      border: none;
      padding: 14px 32px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }

    .newsletter button:hover {
      background: #6d28d9;
    }

    /* footer */
    footer {
      margin-top: 40px;
      padding: 32px 0 20px;
      border-top: 1px solid var(--border-light);
    }

    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }

    .footer-brand {
      max-width: 300px;
    }

    .footer-brand .brand {
      font-size: 1.6rem;
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
      font-weight: 600;
      margin-bottom: 4px;
    }

    .footer-links a {
      color: var(--muted);
      text-decoration: none;
      transition: 0.15s;
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    /* ===== responsive ===== */
    @media (max-width: 1024px) {
      .categories { grid-template-columns: repeat(3, 1fr); }
      .products { grid-template-columns: repeat(3, 1fr); }
    }

    @media (max-width: 820px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search { min-width: 140px; }
      .products { grid-template-columns: repeat(2, 1fr); }
      .hero h1 { font-size: 2.2rem; }
      .deal-card img { width: 100%; max-height: 220px; }
      .deal-content { padding: 24px; }
    }

    @media (max-width: 540px) {
      .header-inner { flex-wrap: wrap; }
      .brand { font-size: 1.4rem; }
      .search { order: 3; flex: 1 1 100%; }
      .categories { grid-template-columns: repeat(2, 1fr); }
      .products { grid-template-columns: 1fr; }
      .hero { padding: 32px 24px; }
      .hero h1 { font-size: 1.8rem; }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">
        <i class="fas fa-bolt"></i>
        GENZ<span>COMMERCE</span>
      </a>
    </div>

    <nav class="main-nav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Shop</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search" role="search">
        <input type="search" id="searchInput" placeholder="Search ..." aria-label="search">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="wishlist"><i class="far fa-heart"></i></button>
        <a class="cart" href="#" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Shop</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">Trending</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="container hero">
    <div class="hero-content">
      <h1><i class="fas fa-bolt"></i> Drop like it's hot</h1>
      <p>Fresh kicks, tech, and vibes — curated for the next-gen. New drops every week.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-store"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-gem"></i> Explore deals</button>
      </div>
    </div>
    <div style="font-size:5rem;opacity:0.2;rotate:12deg;user-select:none;">✨</div>
  </section>

  <!-- CATEGORIES -->
  <section class="section container" id="categories">
    <div class="section-header">
      <h2>Categories <span class="muted">· find your vibe</span></h2>
    </div>
    <div class="grid categories" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section class="section container" id="products">
    <div class="section-header">
      <h2>Trending <span class="muted">· what's hot</span></h2>
    </div>
    <div class="grid products" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>Flash sale <span class="muted">⏳ limited</span></h2>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Next-level performance, zero compromise.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span class="badge-discount">-17%</span>
        </div>
        <p style="margin-top:6px;">Only <strong>12</strong> left at this price</p>
        <div style="margin-top:16px;">
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Grab now</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section container">
    <div class="section-header">
      <h2>Real reviews <span class="muted">· from the crew</span></h2>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p style="margin:10px 0;">"Absolute fire 🔥 Shipping was faster than my wifi."</p>
        <div style="display:flex;align-items:center;gap:12px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar">
          <div><strong>Ava</strong> <span class="muted" style="font-size:0.8rem;">· verified</span></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p style="margin:10px 0;">"Drip level 1000. My new fav store."</p>
        <div style="display:flex;align-items:center;gap:12px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" alt="avatar">
          <div><strong>Mike</strong> <span class="muted" style="font-size:0.8rem;">· frequent</span></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section container">
    <div class="newsletter">
      <h3>✨ Join the squad</h3>
      <p>Get early access, exclusive drops & secret sales.</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="you@genz.com" required>
        <button type="submit" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:14px;font-size:0.9rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <a class="brand" href="#"><i class="fas fa-bolt"></i> GENZ<span>COMMERCE</span></a>
      <p class="muted" style="margin:10px 0 14px;">The ultimate destination for the next-gen.</p>
      <div style="display:flex;gap:12px;">
        <a href="#" class="icon-btn"><i class="fab fa-tiktok"></i></a>
        <a href="#" class="icon-btn"><i class="fab fa-instagram"></i></a>
        <a href="#" class="icon-btn"><i class="fab fa-x-twitter"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div><strong>Support</strong><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
    </div>
  </div>
  <div style="text-align:center;margin-top:30px;color:var(--muted);font-size:0.8rem;">© <span id="year"></span> GENZ-COMMERCE · all rights reserved</div>
</footer>

<script>
  // ----- DATA (fresh gen-z vibe) -----
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
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '🎧', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
  ];

  // ----- render -----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
      div.addEventListener('click', () => {
        searchInput.value = c.name;
        filterProducts(c.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(div);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('div');
      el.className = 'product';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <
