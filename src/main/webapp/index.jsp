<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    /* ------ Reset & base ------ */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcff;
      color: #0b1e33;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ------ color tokens (friendly, soft) ------ */
    :root {
      --primary: #0b2b44;
      --primary-light: #eef6fc;
      --accent: #2b9cdb;
      --accent-soft: #d4edfc;
      --surface: #ffffff;
      --gray: #6b7a8f;
      --gray-light: #eef2f6;
      --shadow: 0 10px 30px -8px rgba(0,20,40,0.08);
      --radius: 20px;
      --radius-sm: 12px;
    }

    /* ------ header (glass, clean) ------ */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.82);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(43,156,219,0.08);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px 16px;
      padding: 12px 0;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.5px;
      color: var(--primary);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 1.4rem; color: var(--accent); }

    /* navigation */
    .main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
      flex-wrap: wrap;
    }
    .main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: 0.2s;
    }
    .main-nav li a:hover,
    .main-nav li a:focus-visible {
      background: var(--accent-soft);
      color: #065a8a;
    }
    .main-nav li a i { font-size: 1rem; opacity: 0.7; }

    /* search */
    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid #dce3ec;
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      transition: 0.25s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 12px rgba(43,156,219,0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      font-size: 0.95rem;
      width: 170px;
      padding: 8px 0;
      font-weight: 400;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 60px;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.2s;
      display: grid;
      place-items: center;
    }
    .search-wrap button:hover { background: #1a7bb5; }

    /* header actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      padding: 8px 10px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn:hover { background: var(--gray-light); }
    .cart {
      position: relative;
      padding: 8px 14px;
      background: var(--primary);
      color: white;
      border-radius: 40px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .cart i { font-size: 1.1rem; }
    .cart-count {
      background: var(--accent);
      color: #0b1e33;
      font-weight: 700;
      font-size: 0.75rem;
      padding: 0 8px;
      border-radius: 30px;
      line-height: 1.6;
      min-width: 24px;
      text-align: center;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 8px;
    }

    /* mobile menu */
    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(0,0,0,0.04);
      padding: 12px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
      padding: 0 8px;
    }
    #mobileMenu ul a {
      display: block;
      padding: 12px 16px;
      border-radius: 40px;
      font-weight: 500;
      background: var(--primary-light);
      color: var(--primary);
    }

    /* ------ hero (friendly, spacious) ------ */
    .hero {
      background: linear-gradient(135deg, #092236 0%, #1a4b6b 100%);
      color: white;
      border-radius: var(--radius);
      margin: 24px auto 20px;
      padding: 52px 40px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
    }
    .hero-content { flex: 1 1 300px; }
    .hero-content h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.5rem;
      line-height: 1.2;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }
    .hero-content p {
      opacity: 0.85;
      max-width: 480px;
      font-size: 1.05rem;
      margin-bottom: 24px;
    }
    .hero-actions { display: flex; flex-wrap: wrap; gap: 12px; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      font-size: 1rem;
    }
    .btn-primary {
      background: white;
      color: #092236;
    }
    .btn-primary:hover { background: #e6f0f9; transform: scale(1.02); }
    .btn-ghost {
      background: rgba(255,255,255,0.12);
      color: white;
      border: 1px solid rgba(255,255,255,0.25);
    }
    .btn-ghost:hover { background: rgba(255,255,255,0.2); }
    .hero-image {
      flex: 0 0 200px;
      text-align: center;
      font-size: 6rem;
      opacity: 0.7;
      color: #b3d9f0;
    }

    /* ------ section headings ------ */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin: 40px 0 20px;
    }
    .section-head h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      font-weight: 600;
      color: var(--primary);
    }
    .section-head .muted { color: var(--gray); font-weight: 400; }

    /* ------ categories (friendly tiles) ------ */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: white;
      border-radius: var(--radius-sm);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.2s;
      cursor: pointer;
      border: 1px solid rgba(43,156,219,0.06);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 16px 32px -8px rgba(43,156,219,0.15);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; margin-top: 4px; }

    /* ------ products (clean cards) ------ */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius-sm);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.2s;
      border: 1px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-4px);
      border-color: var(--accent-soft);
      box-shadow: 0 16px 32px -12px rgba(0,0,0,0.08);
    }
    .product-card img {
      width: 100%;
      aspect-ratio: 1/1;
      object-fit: cover;
      background: #f0f5fa;
    }
    .product-body {
      padding: 16px 14px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      color: var(--primary);
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--gray);
      background: var(--gray-light);
      padding: 2px 12px;
      border-radius: 30px;
      display: inline-block;
      width: fit-content;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
      margin-top: 4px;
    }
    .price { font-weight: 700; font-size: 1.2rem; }
    .old-price { color: var(--gray); text-decoration: line-through; font-size: 0.9rem; }
    .rating {
      color: #f5b342;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-footer {
      padding: 8px 14px 14px;
      display: flex;
      gap: 8px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover { background: #1a4b6b; }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--gray-light);
      padding: 0 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
      font-size: 1rem;
    }
    .wish-btn:hover { background: var(--gray-light); }

    /* ------ deal / flash sale (friendly) ------ */
    .deal-card {
      background: white;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
      padding: 24px;
      align-items: center;
      background: linear-gradient(145deg, #f6faff, #ffffff);
      border: 1px solid rgba(43,156,219,0.08);
    }
    .deal-card img {
      flex: 1 1 220px;
      border-radius: var(--radius-sm);
      max-height: 200px;
      object-fit: cover;
    }
    .deal-content { flex: 2 1 300px; }
    .deal-content h3 { font-size: 1.8rem; font-weight: 700; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 14px;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
    }
    .time-box div:first-child { font-size: 1.6rem; font-weight: 700; }
    .deal-price { font-size: 1.8rem; font-weight: 700; }
    .deal-discount {
      background: #ff6b6b;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* ------ testimonials (friendly) ------ */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x proximity;
    }
    .testimonial {
      flex: 0 0 300px;
      background: white;
      padding: 24px;
      border-radius: var(--radius-sm);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial .rating { font-size: 1.2rem; letter-spacing: 2px; }
    .testimonial p { margin: 12px 0; color: #1f3348; }

    /* ------ newsletter (soft) ------ */
    .newsletter-box {
      background: var(--primary-light);
      border-radius: var(--radius);
      padding: 32px 28px;
      text-align: center;
      margin: 24px 0;
      border: 1px solid rgba(43,156,219,0.1);
    }
    .newsletter-box h3 { font-size: 1.6rem; color: var(--primary); }
    .newsletter-box p { color: var(--gray); margin-bottom: 16px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 1px solid #d0dbe8;
      min-width: 240px;
      font-size: 1rem;
      background: white;
    }
    .newsletter-form button { background: var(--primary); color: white; border: none; padding: 14px 32px; border-radius: 60px; font-weight: 600; cursor: pointer; transition: 0.2s; }
    .newsletter-form button:hover { background: #1a4b6b; }

    /* footer */
    footer {
      margin-top: 40px;
      padding: 32px 0 20px;
      border-top: 1px solid #eaf0f6;
      color: var(--gray);
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-brand { font-weight: 700; font-size: 1.4rem; color: var(--primary); }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { line-height: 2; }
    .footer-links div strong { color: var(--primary); font-weight: 600; display: block; }

    /* ------ responsive ------ */
    @media (max-width: 900px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap input { width: 120px; }
      .hero { flex-direction: column; text-align: center; padding: 36px 24px; }
      .hero-content p { max-width: 100%; }
      .hero-image { font-size: 4rem; }
    }
    @media (max-width: 600px) {
      .container { padding: 0 16px; }
      .brand { font-size: 1.4rem; }
      .search-wrap { width: 100%; }
      .search-wrap input { width: 100%; }
      .header-inner { flex-direction: column; align-items: stretch; }
      .header-actions { justify-content: flex-end; }
      .hero-content h1 { font-size: 1.8rem; }
      .products-grid { grid-template-columns: 1fr 1fr; }
      .categories-grid { grid-template-columns: repeat(2,1fr); }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> Nexus<span class="accent">Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="search">
        <button id="searchBtn" aria-label="submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" href="#" title="account"><i class="far fa-user"></i></a>
        <a class="icon-btn" href="#" title="wishlist"><i class="far fa-heart"></i></a>
        <a class="cart" href="#" id="cartBtn">
          <i class="fas fa-shopping-cart"></i>
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
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="container hero">
    <div class="hero-content">
      <h1>Fresh finds, <br>warm style</h1>
      <p>Discover curated picks for every moment — from tech to threads. Enjoy free shipping on your first order.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-image"><i class="fas fa-gift"></i></div>
  </section>

  <!-- Categories -->
  <section class="container" id="categories">
    <div class="section-head">
      <h2>Shop by category</h2>
      <span class="muted">Tap any tile to filter</span>
    </div>
    <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
  </section>

  <!-- Products -->
  <section class="container" id="products">
    <div class="section-head">
      <h2>Trending now</h2>
      <span class="muted">Popular picks</span>
    </div>
    <div class="products-grid" id="productsGrid" aria-live="polite"></div>
  </section>

  <!-- Deal / Flash Sale -->
  <section class="container" id="deals">
    <div class="section-head">
      <h2>⚡ Flash sale</h2>
      <span class="muted">Limited time</span>
    </div>
    <div class="deal-card" id="dealCard">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80" alt="MacBook Air M2">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Lightweight, silent, and powerful — now with M2 chip.</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><span>d</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>h</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>m</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>s</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
          <span class="deal-price">$999</span>
          <span class="old-price" style="font-size:1.2rem;">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin-top:10px;"><strong>12</strong> items left</p>
        <button class="btn btn-primary" id="buyDeal" style="background:var(--primary);color:white;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="container">
    <div class="section-head">
      <h2>What customers say</h2>
      <span class="muted">Real reviews</span>
    </div>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"Super fast delivery and the quality is outstanding. Will order again!"</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:8px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p>"Great selection, smooth checkout. The product exceeded my expectations."</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:8px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"Love the easy returns and the customer service. Highly recommend!"</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:8px;">
          <img src="https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;">
          <div><strong>Sophia Park</strong><div class="muted" style="font-size:0.8rem;">Top shopper</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="container">
    <div class="newsletter-box">
      <h3>📬 Stay in the loop</h3>
      <p>Get exclusive offers and early access to new arrivals.</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
        <button type="submit" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-weight:500;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-inner">
    <div>
      <div class="footer-brand"><i class="fas fa-store-alt"></i> NexusShop</div>
      <div class="muted" style="margin-top:6px;max-width:260px;">Modern e‑commerce demo — built with care.</div>
      <div style="margin-top:14px;display:flex;gap:12px;">
        <a href="#" class="icon-btn" style="background:var(--gray-light);border-radius:50%;width:40px;height:40px;display:inline-grid;place-items:center;"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="icon-btn" style="background:var(--gray-light);border-radius:50%;width:40px;height:40px;display:inline-grid;place-items:center;"><i class="fab fa-twitter"></i></a>
        <a href="#" class="icon-btn" style="background:var(--gray-light);border-radius:50%;width:40px;height:40px;display:inline-grid;place-items:center;"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong> About<br>Careers<br>Press</div>
      <div><strong>Support</strong> Help Center<br>Shipping<br>Contact</div>
    </div>
  </div>
  <div style="text-align:center;margin-top:28px;color:var(--gray);font-size:0.85rem;">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  // ---------- DATA ----------
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
    { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
  ];

  // ---------- STATE ----------
  let cartCount = 0;

  // ---------- DOM refs ----------
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');

  // ---------- RENDER ----------
  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
      div.addEventListener('click', () => {
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(div);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    if (!list.length) {
      productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--gray);">No products found
