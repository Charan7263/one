<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Kota's Smoking Shop</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root {
      --bg: #07070b;
      --surface: #101016;
      --surface-2: #171720;
      --pink: #ff2d95;
      --purple: #8b5cf6;
      --cyan: #22d3ee;
      --lime: #b8ff3c;
      --orange: #ff8a3d;
      --text: #fafafa;
      --muted: #9292a3;
      --border: rgba(255,255,255,.1);
      --radius: 22px;
      --shadow: 0 20px 60px rgba(0,0,0,.4);
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: Inter, sans-serif;
      background:
        radial-gradient(circle at 10% 0%, rgba(255,45,149,.15), transparent 28%),
        radial-gradient(circle at 90% 15%, rgba(34,211,238,.12), transparent 25%),
        var(--bg);
      color: var(--text);
      min-height: 100vh;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    button {
      font: inherit;
      border: 0;
      cursor: pointer;
    }

    .container {
      max-width: 1280px;
      margin: auto;
      padding: 0 22px;
    }

    /* HEADER */

    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(7,7,11,.78);
      backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      height: 74px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 11px;
      font-size: 21px;
      font-weight: 900;
      letter-spacing: -1px;
      white-space: nowrap;
    }

    .logo-icon {
      width: 42px;
      height: 42px;
      border-radius: 14px;
      display: grid;
      place-items: center;
      background: linear-gradient(135deg,var(--pink),var(--purple));
      box-shadow: 0 0 30px rgba(255,45,149,.3);
    }

    .logo span {
      background: linear-gradient(90deg,var(--pink),var(--cyan));
      -webkit-background-clip: text;
      color: transparent;
    }

    nav {
      display: flex;
      gap: 4px;
    }

    nav a {
      padding: 9px 14px;
      border-radius: 999px;
      color: var(--muted);
      font-size: 13px;
      font-weight: 700;
      transition: .2s;
    }

    nav a:hover,
    nav a.active {
      background: rgba(255,255,255,.08);
      color: white;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 7px;
    }

    .icon-btn {
      width: 41px;
      height: 41px;
      border-radius: 50%;
      background: rgba(255,255,255,.06);
      border: 1px solid var(--border);
      color: white;
      transition: .2s;
    }

    .icon-btn:hover {
      transform: translateY(-2px);
      background: linear-gradient(135deg,var(--pink),var(--purple));
    }

    .mobile-btn {
      display: none;
    }

    /* HERO */

    .hero {
      min-height: 600px;
      margin: 20px 12px 0;
      border: 1px solid var(--border);
      border-radius: 32px;
      overflow: hidden;
      position: relative;
      display: flex;
      align-items: center;
      background:
        linear-gradient(90deg,rgba(7,7,11,.96),rgba(7,7,11,.65),rgba(7,7,11,.25)),
        url("https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?auto=format&fit=crop&w=1800&q=85")
        center/cover;
      box-shadow: var(--shadow);
    }

    .hero:after {
      content: "";
      position: absolute;
      width: 450px;
      height: 450px;
      right: -160px;
      top: -130px;
      background: linear-gradient(135deg,var(--pink),var(--purple),var(--cyan));
      filter: blur(80px);
      opacity: .2;
      border-radius: 50%;
    }

    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 720px;
      padding: 70px 0;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 7px 13px;
      border-radius: 999px;
      background: rgba(255,45,149,.12);
      border: 1px solid rgba(255,45,149,.3);
      color: #ff8bc4;
      font-size: 11px;
      font-weight: 900;
      letter-spacing: .7px;
      margin-bottom: 20px;
    }

    .hero h1 {
      font-size: clamp(48px,7vw,86px);
      line-height: .94;
      letter-spacing: -5px;
      font-weight: 900;
      margin-bottom: 23px;
    }

    .gradient-text {
      background: linear-gradient(90deg,var(--pink),var(--purple),var(--cyan));
      -webkit-background-clip: text;
      color: transparent;
    }

    .hero p {
      color: #b8b8c7;
      max-width: 570px;
      line-height: 1.7;
      font-size: 16px;
      margin-bottom: 28px;
    }

    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      padding: 14px 22px;
      border-radius: 999px;
      color: white;
      font-size: 13px;
      font-weight: 800;
      transition: .2s;
    }

    .btn-primary {
      background: linear-gradient(100deg,var(--pink),var(--purple));
      box-shadow: 0 12px 35px rgba(255,45,149,.25);
    }

    .btn-primary:hover {
      transform: translateY(-3px) scale(1.02);
    }

    .btn-secondary {
      background: rgba(255,255,255,.08);
      border: 1px solid var(--border);
    }

    .btn-secondary:hover {
      background: rgba(255,255,255,.14);
      transform: translateY(-3px);
    }

    /* SECTIONS */

    section {
      padding: 65px 0;
    }

    .section-heading {
      display: flex;
      justify-content: space-between;
      align-items: end;
      gap: 20px;
      margin-bottom: 28px;
    }

    .section-heading h2 {
      font-size: 31px;
      letter-spacing: -1.4px;
    }

    .section-heading p {
      color: var(--muted);
      margin-top: 5px;
      font-size: 13px;
    }

    /* CATEGORIES */

    .categories {
      display: grid;
      grid-template-columns: repeat(5,1fr);
      gap: 15px;
    }

    .category {
      min-height: 150px;
      padding: 22px;
      border-radius: var(--radius);
      background: rgba(255,255,255,.055);
      border: 1px solid var(--border);
      transition: .25s;
      position: relative;
      overflow: hidden;
    }

    .category:hover {
      transform: translateY(-7px);
      border-color: rgba(255,45,149,.35);
      background: rgba(255,255,255,.09);
    }

    .category i {
      width: 52px;
      height: 52px;
      border-radius: 16px;
      display: grid;
      place-items: center;
      margin-bottom: 18px;
      background: linear-gradient(135deg,rgba(255,45,149,.18),rgba(34,211,238,.15));
      color: var(--cyan);
      font-size: 22px;
    }

    .category h3 {
      font-size: 14px;
      margin-bottom: 5px;
    }

    .category p {
      color: var(--muted);
      font-size: 11px;
    }

    /* PRODUCT GRID */

    .products {
      display: grid;
      grid-template-columns: repeat(4,1fr);
      gap: 18px;
    }

    .product {
      border: 1px solid var(--border);
      background: rgba(255,255,255,.055);
      border-radius: var(--radius);
      overflow: hidden;
      transition: .25s;
    }

    .product:hover {
      transform: translateY(-8px);
      border-color: rgba(124,92,246,.5);
      box-shadow: var(--shadow);
    }

    .product-image {
      height: 245px;
      position: relative;
      overflow: hidden;
      background: #15151d;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: .5s;
    }

    .product:hover img {
      transform: scale(1.08);
    }

    .tag {
      position: absolute;
      top: 12px;
      left: 12px;
      z-index: 2;
      padding: 5px 9px;
      border-radius: 999px;
      background: var(--lime);
      color: #111;
      font-size: 9px;
      font-weight: 900;
    }

    .heart {
      position: absolute;
      right: 12px;
      top: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(0,0,0,.55);
      color: white;
      border: 1px solid rgba(255,255,255,.12);
    }

    .product-body {
      padding: 17px;
    }

    .product-brand {
      color: var(--cyan);
      font-size: 10px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: .8px;
    }

    .product h3 {
      font-size: 15px;
      margin: 5px 0 10px;
    }

    .product-description {
      color: var(--muted);
      font-size: 11px;
      line-height: 1.5;
      min-height: 34px;
    }

    .product-footer {
      margin-top: 15px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .price {
      font-size: 18px;
      font-weight: 900;
    }

    .view-btn {
      padding: 9px 13px;
      border-radius: 10px;
      color: white;
      background: rgba(255,255,255,.08);
      border: 1px solid var(--border);
      font-size: 11px;
      font-weight: 800;
    }

    .view-btn:hover {
      background: linear-gradient(100deg,var(--pink),var(--purple));
    }

    /* FEATURE BANNER */

    .feature {
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 380px;
      border-radius: 28px;
      overflow: hidden;
      border: 1px solid var(--border);
      background: linear-gradient(135deg,#21102a,#101525);
      box-shadow: var(--shadow);
    }

    .feature-image {
      background:
        url("https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=1000&q=85")
        center/cover;
      min-height: 320px;
    }

    .feature-content {
      padding: 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .feature-content small {
      color: var(--pink);
      font-weight: 900;
      letter-spacing: 1px;
      margin-bottom: 10px;
    }

    .feature-content h2 {
      font-size: 38px;
      line-height: 1;
      letter-spacing: -2px;
      margin-bottom: 15px;
    }

    .feature-content p {
      color: var(--muted);
      font-size: 14px;
      line-height: 1.7;
      max-width: 450px;
      margin-bottom: 22px;
    }

    /* ACCESSORIES */

    .accessory-grid {
      display: grid;
      grid-template-columns: repeat(3,1fr);
      gap: 16px;
    }

    .accessory {
      padding: 25px;
      border-radius: 22px;
      background: rgba(255,255,255,.05);
      border: 1px solid var(--border);
    }

    .accessory i {
      font-size: 25px;
      color: var(--pink);
      margin-bottom: 18px;
    }

    .accessory h3 {
      font-size: 16px;
      margin-bottom: 7px;
    }

    .accessory p {
      color: var(--muted);
      font-size: 12px;
      line-height: 1.6;
    }

    /* AGE NOTICE */

    .notice {
      padding: 22px;
      border-radius: 18px;
      background: rgba(255,138,61,.08);
      border: 1px solid rgba(255,138,61,.22);
      display: flex;
      align-items: center;
      gap: 15px;
      color: #ffc39f;
      font-size: 12px;
      line-height: 1.6;
    }

    .notice i {
      font-size: 23px;
      color: var(--orange);
    }

    /* FOOTER */

    footer {
      border-top: 1px solid var(--border);
      padding: 50px 0 25px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 35px;
    }

    footer h4 {
      font-size: 13px;
      margin-bottom: 13px;
    }

    footer p,
    footer a {
      color: var(--muted);
      font-size: 12px;
      line-height: 2;
    }

    footer a:hover {
      color: var(--cyan);
    }

    .socials {
      display: flex;
      gap: 8px;
      margin-top: 15px;
    }

    .socials a {
      width: 38px;
      height: 38px;
      border-radius: 11px;
      background: rgba(255,255,255,.06);
      display: grid;
      place-items: center;
    }

    .copyright {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid var(--border);
      color: #646477;
      font-size: 10px;
    }

    /* RESPONSIVE */

    @media(max-width:1100px) {
      .products {
        grid-template-columns: repeat(3,1fr);
      }

      .categories {
        grid-template-columns: repeat(3,1fr);
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media(max-width:800px) {
      nav {
        display: none;
      }

      .mobile-btn {
        display: block;
      }

      .hero {
        min-height: 530px;
      }

      .hero h1 {
        font-size: 53px;
        letter-spacing: -3px;
      }

      .products {
        grid-template-columns: repeat(2,1fr);
      }

      .categories {
        grid-template-columns: repeat(2,1fr);
      }

      .feature {
        grid-template-columns: 1fr;
      }

      .feature-content {
        padding: 35px;
      }

      .accessory-grid {
        grid-template-columns: 1fr;
      }
    }

    @media(max-width:520px) {
      .container {
        padding: 0 14px;
      }

      .hero {
        margin: 10px 6px 0;
        min-height: 480px;
        border-radius: 24px;
      }

      .hero h1 {
        font-size: 41px;
        letter-spacing: -2px;
      }

      .hero p {
        font-size: 13px;
      }

      .header-inner {
        height: 66px;
      }

      .header-actions .hide-mobile {
        display: none;
      }

      .products {
        gap: 10px;
      }

      .product-image {
        height: 175px;
      }

      .product-body {
        padding: 12px;
      }

      .product h3 {
        font-size: 12px;
      }

      .product-description {
        font-size: 10px;
      }

      .price {
        font-size: 15px;
      }

      .view-btn {
        padding: 7px 9px;
        font-size: 9px;
      }

      .section-heading h2 {
        font-size: 24px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 22px;
      }

      .feature-content h2 {
        font-size: 30px;
      }
    }
  </style>
</head>

<body>

<header>
  <div class="container header-inner">

    <a href="#" class="logo">
      <div class="logo-icon">
        <i class="fa-solid fa-store"></i>
      </div>
      Kota's <span>Smoking Shop</span>
    </a>

    <nav>
      <a href="#" class="active">Home</a>
      <a href="#categories">Collections</a>
      <a href="#accessories">Accessories</a>
      <a href="#featured">Featured</a>
      <a href="#about">About</a>
    </nav>

    <div class="header-actions">
      <button class="icon-btn" aria-label="Search">
        <i class="fa-solid fa-magnifying-glass"></i>
      </button>

      <button class="icon-btn hide-mobile" aria-label="Wishlist">
        <i class="fa-regular fa-heart"></i>
      </button>

      <button class="icon-btn mobile-btn" aria-label="Menu">
        <i class="fa-solid fa-bars"></i>
      </button>
    </div>

  </div>
</header>


<main>

  <!-- HERO -->

  <section class="hero">

    <div class="container">
      <div class="hero-content">

        <div class="eyebrow">
          <i class="fa-solid fa-sparkles"></i>
          KOTA'S • MODERN SMOKING CULTURE
        </div>

        <h1>
          YOUR VIBE.<br>
          YOUR <span class="gradient-text">SETUP.</span>
        </h1>

        <p>
          Explore premium smoking accessories, hookah setups,
          rolling essentials, storage gear and lifestyle pieces
          curated for modern enthusiasts.
        </p>

        <div class="hero-buttons">
          <a href="#categories" class="btn btn-primary">
            Explore Collection
            <i class="fa-solid fa-arrow-right"></i>
          </a>

          <a href="#featured" class="btn btn-secondary">
            Featured Picks
          </a>
        </div>

      </div>
    </div>

  </section>


  <!-- CATEGORIES -->

  <section id="categories">

    <div class="container">

      <div class="section-heading">
        <div>
          <h2>Shop Your Vibe</h2>
          <p>Premium accessories and lifestyle essentials.</p>
        </div>
      </div>

      <div class="categories">

        <div class="category">
          <i class="fa-solid fa-bong"></i>
          <h3>Hookah Collection</h3>
          <p>Hookahs & display pieces</p>
        </div>

        <div class="category">
          <i class="fa-solid fa-fire"></i>
          <h3>Rolling Gear</h3>
          <p>Papers, trays & tools</p>
        </div>

        <div class="category">
          <i class="fa-solid fa-box"></i>
          <h3>Storage</h3>
          <p>Cases & storage solutions</p>
        </div>

        <div class="category">
          <i class="fa-solid fa-wand-magic-sparkles"></i>
          <h3>Cleaning</h3>
          <p>Care & maintenance tools</p>
        </div>

        <div class="category">
          <i class="fa-solid fa-gift"></i>
          <h3>Gift Collection</h3>
          <p>Premium lifestyle gifts</p>
        </div>

      </div>

    </div>

  </section>


  <!-- ACCESSORIES -->

  <section id="accessories">

    <div class="container">

      <div class="section-heading">
        <div>
          <h2>Accessory Drop</h2>
          <p>Upgrade your setup with modern essentials.</p>
        </div>
      </div>

      <div class="products">

        <article class="product">

          <div class="product-image">
            <img src="https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=700&q=85" alt="Glass accessory">
            <span class="tag">FEATURED</span>
            <button class="heart">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>

          <div class="product-body">
            <div class="product-brand">Kota Select</div>
            <h3>Premium Glass Piece</h3>
            <p class="product-description">
              Modern glassware designed for display and accessory use.
            </p>

            <div class="product-footer">
              <span class="price">$89</span>
              <button class="view-btn">VIEW</button>
            </div>
          </div>

        </article>


        <article class="product">

          <div class="product-image">
            <img src="https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?auto=format&fit=crop&w=700&q=85" alt="Hookah accessories">
            <span class="tag">HOT</span>
            <button class="heart">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>

          <div class="product-body">
            <div class="product-brand">Kota Select</div>
            <h3>Modern Hookah Setup</h3>
            <p class="product-description">
              Contemporary hookah equipment for display and legal use.
            </p>

            <div class="product-footer">
              <span class="price">$149</span>
              <button class="view-btn">VIEW</button>
            </div>
          </div>

        </article>


        <article class="product">

          <div class="product-image">
            <img src="https://images.unsplash.com/photo-1544816155-12df9643f363?auto=format&fit=crop&w=700&q=85" alt="Storage case">
            <button class="heart">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>

          <div class="product-body">
            <div class="product-brand">Urban Gear</div>
            <h3>Travel Storage Case</h3>
            <p class="product-description">
              Compact protective storage for accessories and equipment.
            </p>

            <div class="product-footer">
              <span class="price">$39</span>
              <button class="view-btn">VIEW</button>
            </div>
          </div>

        </article>


        <article class="product">

          <div class="product-image">
            <img src="https://images.unsplash.com/photo-1584634731339-252c581abfc5?auto=format&fit=crop&w=700&q=85" alt="Accessory tools">
            <span class="tag">NEW</span>
            <button class="heart">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>

          <div class="product-body">
            <div class="product-brand">Kota Tools</div>
            <h3>Cleaning Tool Kit</h3>
            <p class="product-description">
              Maintenance accessories for keeping equipment clean.
            </p>

            <div class="product-footer">
              <span class="price">$29</span>
              <button class="view-btn">VIEW</button>
            </div>
          </div>

        </article>

      </div>

    </div>

  </section>


  <!-- FEATURED -->

  <section id="featured">

    <div class="container">

      <div class="feature">

        <div class="feature-image"></div>

        <div class="feature-content">

          <small>THE KOTA'S EDIT</small>

          <h2>
            BUILD A
            <span class="gradient-text">CLEAN SETUP.</span>
          </h2>

          <p>
            Discover premium hookah equipment, glassware,
            rolling accessories, storage and maintenance gear
            selected for a modern lifestyle aesthetic.
          </p>

          <div>
            <a href="#accessories" class="btn btn-primary">
              Explore Gear
              <i class="fa-solid fa-arrow-right"></i>
            </a>
          </div>

        </div>

      </div>

    </div>

  </section>


  <!-- ACCESSORY TYPES -->

  <section>

    <div class="container">

      <div class="section-heading">
        <div>
          <h2>Everything For Your Setup</h2>
          <p>Modern equipment categories in one place.</p>
        </div>
      </div>

      <div class="accessory-grid">

        <div class="accessory">
          <i class="fa-solid fa-bong"></i>
          <h3>Hookah Equipment</h3>
          <p>
            Modern hookah hardware, bases, stems, hoses,
            bowls and compatible accessories.
          </p>
        </div>

        <div class="accessory">
          <i class="fa-solid fa-layer-group"></i>
          <h3>Rolling Accessories</h3>
          <p>
            Trays, storage, rolling tools and other
            accessory equipment.
          </p>
        </div>

        <div class="accessory">
          <i class="fa-solid fa-screwdriver-wrench"></i>
          <h3>Maintenance Gear</h3>
          <p>
            Cleaning brushes, cases and equipment-care
            accessories for your collection.
          </p>
        </div>

      </div>

    </div>

  </section>


  <!-- NOTICE -->

  <section>

    <div class="container">

      <div class="notice">
        <i class="fa-solid fa-triangle-exclamation"></i>

        <div>
          <strong>Responsible-use notice:</strong>
          Kota's Smoking Shop showcases smoking-related accessories
          and equipment. Tobacco and nicotine products are not sold
          through this demo interface. Follow all applicable local
          laws and age restrictions when purchasing or using regulated
          products.
        </div>

      </div>

    </div>

  </section>

</main>


<!-- FOOTER -->

<footer id="about">

  <div class="container">

    <div class="footer-grid">

      <div>
        <a href="#" class="logo">
          <div class="logo-icon">
            <i class="fa-solid fa-store"></i>
          </div>
          Kota's <span>Smoking Shop</span>
        </a>

        <p style="margin-top:12px;max-width:300px;">
          A modern lifestyle destination for smoking accessories,
          hookah equipment and related gear.
        </p>

        <div class="socials">
          <a href="#"><i class="fa-brands fa-instagram"></i></a>
          <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
          <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
        </div>
      </div>

      <div>
        <h4>SHOP</h4>
        <a href="#categories">Collections</a><br>
        <a href="#accessories">Accessories</a><br>
        <a href="#featured">Featured</a>
      </div>

      <div>
        <h4>SUPPORT</h4>
        <a href="#">Help Center</a><br>
        <a href="#">Shipping</a><br>
        <a href="#">Returns</a>
      </div>

      <div>
        <h4>LEGAL</h4>
        <a href="#">Privacy</a><br>
        <a href="#">Terms</a><br>
        <a href="#">Responsible Use</a>
      </div>

    </div>

    <div class="copyright">
      © 2026 Kota's Smoking Shop • Accessories & lifestyle equipment
    </div>

  </div>

</footer>


<script>

  /* Smooth navigation */

  document.querySelectorAll('a[href^="#"]').forEach(link => {

    link.addEventListener("click", function(e) {

      const target = document.querySelector(this.getAttribute("href"));

      if (target) {
        e.preventDefault();

        target.scrollIntoView({
          behavior: "smooth"
        });
      }

    });

  });


  /* Wishlist interaction */

  document.querySelectorAll(".heart").forEach(button => {

    button.addEventListener("click", function() {

      const icon = this.querySelector("i");

      icon.classList.toggle("fa-regular");
      icon.classList.toggle("fa-solid");

      if (icon.classList.contains("fa-solid")) {
        this.style.background = "linear-gradient(135deg,#ff2d95,#8b5cf6)";
      } else {
        this.style.background = "";
      }

    });

  });


  /* Mobile menu */

  const mobileButton = document.querySelector(".mobile-btn");
  const nav = document.querySelector("nav");

  mobileButton.addEventListener("click", () => {

    if (nav.style.display === "flex") {

      nav.style.display = "";

    } else {

      nav.style.display = "flex";
      nav.style.position = "absolute";
      nav.style.top = "66px";
      nav.style.left = "12px";
      nav.style.right = "12px";
      nav.style.flexDirection = "column";
      nav.style.padding = "12px";
      nav.style.borderRadius = "18px";
      nav.style.background = "rgba(15,15,23,.97)";
      nav.style.border = "1px solid rgba(255,255,255,.1)";

    }

  });


  /* Search demo */

  document.querySelector(".header-actions .icon-btn").addEventListener("click", () => {

    const query = prompt("What are you looking for?");

    if (query) {
      alert("Search interface ready for: " + query);
    }

  });

</script>

</body>
</html>
