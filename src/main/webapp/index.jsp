I've created a significantly improved version of your e-commerce page. The code is now more modern, accessible, and visually refined with enhanced interactivity.
```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    /* ===== reset & base ===== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #ffffff;
      --primary: #0a2540;
      --accent: #00d4ff;
      --muted: #5a6a7a;
      --card-bg: #ffffff;
      --surface: #f2f7fd;
      --success: #28a745;
      --radius: 16px;
      --container: 1280px;
      --shadow-sm: 0 8px 24px rgba(10, 37, 64, 0.06);
      --shadow-hover: 0 20px 40px rgba(10, 37, 64, 0.10);
      --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
      display: block;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ===== header ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(10, 37, 64, 0.06);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
    }
    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
    }
    nav.main-nav li a:hover {
      background: var(--surface);
      color: var(--accent);
    }

    .search {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 6px 14px 6px 20px;
      min-width: 220px;
      transition: var(--transition);
      border: 1px solid transparent;
    }
    .search:focus-within {
      background: white;
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(0, 212, 255, 0.15);
    }
    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 8px 0;
      font-size: 0.95rem;
    }
    .search input::placeholder {
      color: var(--muted);
      font-weight: 400;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.2rem;
      color: var(--primary);
      cursor: pointer;
      padding: 8px;
      border-radius: 50%;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--accent);
    }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 8px 12px;
      border-radius: 40px;
      background: var(--surface);
      transition: var(--transition);
      font-weight: 500;
    }
    .cart:hover {
      background: var(--accent);
      color: #042233;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent);
      color: #042233;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      box-shadow: 0 2px 8px rgba(0, 212, 255, 0.4);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      cursor: pointer;
      padding: 4px 8px;
    }

    /* mobile menu */
    #mobileMenu {
      display: none;
      background: var(--bg);
      border-top: 1px solid rgba(10, 37, 64, 0.06);
      padding: 12px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: var(--surface);
      color: var(--accent);
    }

    /* ===== hero ===== */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(135deg, rgba(10, 37, 64, 0.7), rgba(10, 37, 64, 0.5)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      color: white;
      min-height: 460px;
      padding: 60px 20px;
      border-radius: 0 0 var(--radius) var(--radius);
      margin-bottom: 8px;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: clamp(2.2rem, 6vw, 3.8rem);
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.1;
      max-width: 800px;
      margin: 0 auto 16px;
    }
    .hero p {
      font-size: 1.15rem;
      opacity: 0.92;
      max-width: 680px;
      margin: 0 auto 28px;
    }
    .hero .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
      justify-content: center;
    }

    /* ===== buttons ===== */
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      border: 0;
      transition: var(--transition);
    }
    .btn-primary {
      background: var(--accent);
      color: #042233;
      box-shadow: 0 4px 14px rgba(0, 212, 255, 0.35);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(0, 212, 255, 0.45);
    }
    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.25);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.08);
      border-color: white;
    }

    /* ===== sections ===== */
    .section {
      padding: 56px 0;
    }
    .section-header {
      text-align: center;
      margin-bottom: 32px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: clamp(1.8rem, 4vw, 2.6rem);
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .section-header p {
      color: var(--muted);
      margin-top: 6px;
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* ===== categories ===== */
    .categories-grid {
      grid-template-columns: repeat(6, 1fr);
    }
    .cat-card {
      background: var(--card-bg);
      border-radius: var(--radius);
      padding: 24px 16px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid rgba(10, 37, 64, 0.04);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 10px;
    }
    .cat-card h4 {
      font-size: 1rem;
      font-weight: 600;
    }
    .cat-card .muted {
      font-size: 0.8rem;
      margin-top: 4px;
    }

    /* ===== products ===== */
    .products-grid {
      grid-template-columns: repeat(4, 1fr);
    }
    .product {
      background: var(--card-bg);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(10, 37, 64, 0.04);
    }
    .product:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
    }
    .product-img-wrap img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      transition: var(--transition);
    }
    .product:hover .product-img-wrap img {
      transform: scale(1.02);
    }
    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #042233;
      padding: 4px 12px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.7rem;
      letter-spacing: 0.3px;
      text-transform: uppercase;
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-size: 1rem;
      font-weight: 600;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 8px;
    }
    .price {
      font-weight: 700;
      font-size: 1.15rem;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.85rem;
      margin-left: 6px;
      font-weight: 400;
    }
    .rating {
      color: #f5b342;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 0.75rem;
    }
    .product-footer {
      display: flex;
      gap: 10px;
      padding: 8px 16px 16px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: var(--accent);
      color: #042233;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid rgba(10, 37, 64, 0.08);
      padding: 8px 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }
    .wish-btn:hover {
      background: #fff0f0;
      border-color: #ff6b6b;
      color: #ff6b6b;
    }

    /* ===== deal / flash sale ===== */
    .deal {
      display: flex;
      gap: 20px;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      align-items: stretch;
      border: 1px solid rgba(10, 37, 64, 0.04);
    }
    .deal-img {
      width: 45%;
      min-height: 280px;
      object-fit: cover;
      background: #eef3f8;
    }
    .deal .content {
      padding: 32px 28px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal .content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .timer {
      display: flex;
      gap: 14px;
      margin: 20px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 12px 16px;
      border-radius: 12px;
      min-width: 72px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 1.5rem;
      font-weight: 700;
    }
    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.75;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .deal .price {
      font-size: 1.8rem;
    }
    .deal-discount {
      background: #ff4757;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }
    .deal .stock-warning {
      margin-top: 12px;
      color: var(--muted);
    }

    /* ===== testimonials ===== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 300px;
      background: white;
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(10, 37, 64, 0.04);
      scroll-snap-align: start;
      flex-shrink: 0;
    }
    .testimonial .rating {
      color: #f5b342;
      font-size: 1rem;
      margin-bottom: 8px;
    }
    .testimonial p {
      font-size: 0.95rem;
      color: var(--primary);
      margin-bottom: 16px;
    }
    .testimonial .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial .author img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
    }
    .testimonial .author .name {
      font-weight: 600;
    }
    .testimonial .author .role {
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* ===== newsletter ===== */
    .newsletter {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
    }
    .newsletter h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      margin-bottom: 4px;
    }
    .newsletter p {
      opacity: 0.8;
      margin-bottom: 20px;
    }
    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      font-size: 0.95rem;
      outline: none;
    }
    .newsletter input:focus {
      box-shadow: 0 0 0 3px var(--accent);
    }
    .newsletter .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    #newsletterMsg {
      margin-top: 14px;
      font-size: 0.95rem;
    }

    /* ===== footer ===== */
    footer {
      margin-top: 16px;
      padding: 40px 0 28px;
      border-top: 1px solid rgba(10, 37, 64, 0.06);
      color: var(--muted);
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
      align-items: flex-start;
    }
    .footer-brand {
      max-width: 320px;
    }
    .footer-brand .brand {
      font-size: 1.3rem;
    }
    .footer-brand p {
      margin-top: 8px;
      font-size: 0.9rem;
    }
    .footer-social {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-social .icon-btn {
      background: var(--surface);
      border-radius: 50%;
      padding: 10px;
      font-size: 1rem;
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div {
      min-width: 120px;
    }
    .footer-links h4 {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 8px;
    }
    .footer-links ul {
      list-style: none;
      line-height: 2;
      font-size: 0.9rem;
    }
    .footer-links ul li a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      margin-top: 28px;
      font-size: 0.85rem;
      border-top: 1px solid rgba(10, 37, 64, 0.04);
      padding-top: 20px;
    }

    /* ===== responsive ===== */
    @media (max-width: 1200px) {
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (max-width: 992px) {
      .search {
        min-width: 160px;
      }
      .deal-img {
        width: 40%;
        min-height: 220px;
      }
    }

    @media (max-width: 768px) {
      .mobile-toggle {
        display: inline-block;
      }
      nav.main-nav {
        display: none;
      }
      .search {
        min-width: 140px;
        padding: 4px 10px 4px 16px;
      }
      .search input {
        font-size: 0.85rem;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal {
        flex-direction: column;
      }
      .deal-img {
        width: 100%;
        height: 200px;
        min-height: auto;
      }
      .deal .content {
        padding: 24px 20px;
      }
      .timer {
        gap: 10px;
      }
      .time-box {
        min-width: 60px;
        padding: 10px 12px;
      }
      .footer-inner {
        flex-direction: column;
        align-items: center;
        text-align: center;
      }
      .footer-links {
        justify-content: center;
        gap: 32px;
      }
      .hero h1 {
        font-size: 2rem;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: 1fr;
      }
      .header-inner {
        flex-wrap: wrap;
        gap: 10px;
      }
      .header-actions {
        gap: 6px;
      }
      .cart {
        padding: 6px 10px;
      }
      .hero {
        min-height: 340px;
        padding: 40px 16px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .newsletter {
        padding: 32px 20px;
      }
      .newsletter input {
        width: 100%;
      }
    }

    /* utils */
    .muted {
      color: var(--muted);
    }
    .text-center {
      text-align: center;
    }
    .mt-1 {
      margin-top: 8px;
    }
    .gap-1 {
      gap: 8px;
    }
  </style>
</head>

<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:14px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          Nexus<span class="accent">Shop</span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Primary">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:10px;"></i></a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
        <div class="search" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
          <button class="icon-btn" id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user"></i></a>
          <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" aria-label="Cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Categories</a></li>
          <li><a href="#">Trending</a></li>
          <li><a href="#deals">Deals</a></li>
          <li><a href="#">About</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero">
      <div class="container">
        <h1>New Winter Collection &amp; Premium Picks</h1>
        <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="section-header">
        <h2 id="cat-title">Shop by Category</h2>
        <p>Browse through our wide range of products across curated categories.</p>
      </div>
      <div class="grid categories-grid" id="categoriesGrid" aria-live="polite"></div>
    </section>

    <!-- Products -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="section-header">
        <h2 id="prod-title">Trending Products</h2>
        <p>Popular picks based on recent activity.</p>
      </div>
      <div class="grid products-grid" id="productsGrid" aria-live="polite"></div>
    </section>

    <!-- Deal -->
    <section id="deals" class="section container" aria-labelledby="deals-title">
      <div class="section-header">
        <h2 id="deals-title">Flash Sale</h2>
        <p>Limited-time offers — don't miss out!</p>
      </div>
      <div class="deal">
        <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Thin, light and powerful — now with M2 performance.</p>
          <div class="timer" aria-hidden="true">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Mins</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Secs</div></div>
          </div>
          <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
            <div class="price">$999 <span class="old-price">$1,199</span></div>
            <span class="deal-discount">-17%</span>
          </div>
          <div class="stock-warning">Only <strong>12</strong> items left at this price!</div>
          <div style="margin-top:18px;">
            <button class="btn btn-primary" id="buyDeal">Buy Now <i class="fas fa-bolt"></i></button>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section container" aria-labelledby="test-title">
      <div class="section-header">
        <h2 id="test-title">What our customers say</h2>
        <p>Real reviews from verified buyers.</p>
      </div>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin" loading="lazy">
            <div><div class="name">Ava Martin</div><div class="role">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and the checkout was smooth. Will shop again."</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee" loading="lazy">
            <div><div class="name">Michael Lee</div><div class="role">Frequent buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Amazing quality and the deals are unbeatable. Highly recommend!"</p>
          <div class="author">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="James Chen" loading="lazy">
            <div><div class="name">James Chen</div><div class="role">Top reviewer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section container" aria-labelledby="news-title">
      <div class="newsletter">
        <h3 id="news-title">Stay in the loop</h3>
        <p>Subscribe to get exclusive offers &amp; new arrivals</p>
        <form id="newsletterForm" onsubmit="return false;">
          <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-inner">
        <div class="footer-brand">
          <div class="brand">Nexus<span class="accent">Shop</span></div>
          <p>A modern e-commerce demo built with HTML, CSS &amp; JavaScript.</p>
          <div class="footer-social">
            <a class="icon-btn" href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
            <a class="icon-btn" href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a class="icon-btn" href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <div>
            <h4>Company</h4>
            <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul>
          </div>
          <div>
            <h4>Support</h4>
            <ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping &amp; Returns</a></li><li><a href="#">Contact</a></li></ul>
          </div>
        </div>
      </div>
      <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ===== Data =====
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro
