<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Field Catalog</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Work+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
  :root{
    --paper:#F6F1E3;
    --paper-deep:#EFE7D2;
    --ink:#1A1B1F;
    --ink-soft:#4B4C50;
    --marigold:#E7A93C;
    --brick:#BD4128;
    --forest:#2B5E4E;
    --white:#FFFDF7;
    --line: rgba(26,27,31,0.16);
    --line-strong: rgba(26,27,31,0.85);
  }

  *{box-sizing:border-box;margin:0;padding:0;}
  html{scroll-behavior:smooth;}
  body{
    background:var(--paper);
    color:var(--ink);
    font-family:'Work Sans',sans-serif;
    line-height:1.5;
  }
  a{color:inherit;text-decoration:none;}
  button,input{font-family:inherit;}
  img{display:block;max-width:100%;}

  .display{
    font-family:'Archivo Black',sans-serif;
    font-weight:400;
    letter-spacing:-0.01em;
  }

  .container{width:100%;max-width:1180px;margin:0 auto;padding:0 24px;}
  .rule{border-top:2px solid var(--line-strong);}
  .rule-thin{border-top:1px solid var(--line);}

  /* ============ HEADER ============ */
  header{
    position:sticky;top:0;z-index:1000;
    background:var(--paper);
    border-bottom:2px solid var(--line-strong);
  }
  .header-inner{
    min-height:78px;
    display:flex;align-items:center;justify-content:space-between;gap:20px;
  }
  .header-left{display:flex;align-items:center;gap:14px;}
  .brand{
    font-family:'Archivo Black',sans-serif;
    font-size:22px;
    display:flex;align-items:baseline;gap:2px;
  }
  .brand .dot{color:var(--brick);}

  nav.main-nav ul{list-style:none;display:flex;gap:2px;}
  nav.main-nav a{
    display:block;padding:10px 14px;
    font-size:13.5px;font-weight:600;
    border-bottom:2px solid transparent;
    transition:border-color .15s ease,color .15s ease;
  }
  nav.main-nav a:hover{border-color:var(--brick);color:var(--brick);}

  .header-right{display:flex;align-items:center;gap:10px;}

  .search{
    width:230px;display:flex;align-items:center;gap:8px;
    padding:9px 12px;
    background:var(--white);
    border:1.5px solid var(--line-strong);
  }
  .search i{color:var(--ink-soft);font-size:13px;}
  .search input{width:100%;border:none;outline:none;background:transparent;font-size:13px;color:var(--ink);}
  .search input::placeholder{color:#9a9488;}

  .icon-btn{
    width:38px;height:38px;
    display:grid;place-items:center;
    border:1.5px solid var(--line-strong);
    background:var(--white);color:var(--ink);
    cursor:pointer;transition:.15s ease;
  }
  .icon-btn:hover{background:var(--ink);color:var(--paper);border-color:var(--ink);}

  .cart{position:relative;}
  .cart-count{
    position:absolute;top:-8px;right:-8px;
    min-width:19px;height:19px;padding:0 4px;
    display:grid;place-items:center;
    background:var(--brick);color:var(--white);
    border:1.5px solid var(--paper);
    font-size:10px;font-weight:800;
  }

  .mobile-toggle{display:none;border:none;background:transparent;font-size:20px;color:var(--ink);cursor:pointer;}

  .mobile-menu{display:none;background:var(--paper-deep);border-top:1.5px solid var(--line-strong);}
  .mobile-menu.open{display:block;}
  .mobile-menu a{display:block;padding:13px 24px;border-bottom:1px solid var(--line);font-size:14px;font-weight:600;}

  /* ============ HERO ============ */
  .hero{
    background:var(--paper);
    padding:56px 0 0;
    overflow:hidden;
  }
  .hero-grid{
    display:grid;
    grid-template-columns:1.05fr 0.95fr;
    align-items:end;
    gap:40px;
  }
  .hero-copy{padding-bottom:56px;}
  .hero-tag{
    display:inline-block;
    padding:5px 10px;
    background:var(--forest);color:var(--white);
    font-size:12px;font-weight:700;
    margin-bottom:22px;
  }
  .hero h1{
    font-size:clamp(38px,5.4vw,64px);
    line-height:0.98;
    margin-bottom:22px;
  }
  .hero h1 em{
    font-style:normal;
    color:var(--brick);
  }
  .hero p{
    max-width:420px;
    color:var(--ink-soft);
    font-size:16px;
    margin-bottom:28px;
  }
  .hero-actions{display:flex;gap:12px;flex-wrap:wrap;}

  .btn{
    display:inline-flex;align-items:center;justify-content:center;gap:9px;
    padding:13px 22px;
    border:2px solid var(--ink);
    font-size:13.5px;font-weight:700;
    cursor:pointer;
    transition:.15s ease;
    background:transparent;
    color:var(--ink);
  }
  .btn-primary{background:var(--ink);color:var(--paper);}
  .btn-primary:hover{background:var(--brick);border-color:var(--brick);}
  .btn-outline:hover{background:var(--ink);color:var(--paper);}

  .hero-figure{position:relative;}
  .hero-figure img{
    width:100%;height:460px;object-fit:cover;
    border:2px solid var(--ink);
  }
  .price-sticker{
    position:absolute;
    top:24px;right:-14px;
    background:var(--marigold);
    color:var(--ink);
    padding:14px 18px;
    border:2px solid var(--ink);
    transform:rotate(6deg);
    text-align:center;
    font-weight:800;
  }
  .price-sticker small{display:block;font-size:10px;font-weight:700;letter-spacing:.03em;}
  .price-sticker strong{display:block;font-family:'Archivo Black',sans-serif;font-size:22px;}

  /* ============ SECTION ============ */
  .section{padding:64px 0;}
  .section-head{
    display:flex;align-items:flex-end;justify-content:space-between;
    gap:20px;margin-bottom:30px;
    padding-bottom:18px;
    border-bottom:2px solid var(--line-strong);
  }
  .section-head h2{font-size:28px;}
  .section-head p{color:var(--ink-soft);font-size:14px;max-width:360px;}

  /* ============ CATEGORIES ============ */
  .categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:1.5px;
    background:var(--line-strong);
    border:1.5px solid var(--line-strong);
  }
  .cat-card{
    background:var(--white);
    padding:26px 14px;
    text-align:center;
    cursor:pointer;
    transition:background .15s ease,color .15s ease;
  }
  .cat-card:hover{background:var(--ink);color:var(--paper);}
  .cat-card:hover .cat-icon{color:var(--marigold);}
  .cat-icon{font-size:22px;margin-bottom:12px;color:var(--brick);transition:color .15s ease;}
  .cat-card h4{font-size:13.5px;font-weight:700;margin-bottom:3px;}
  .cat-card small{font-size:11px;color:var(--ink-soft);}
  .cat-card:hover small{color:#c9c2b2;}

  /* ============ PRODUCTS ============ */
  .products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
  }
  .product{
    background:var(--white);
    border:1.5px solid var(--line-strong);
    display:flex;flex-direction:column;
    transition:transform .15s ease,box-shadow .15s ease;
  }
  .product:hover{transform:translate(-2px,-2px);box-shadow:5px 5px 0 var(--ink);}

  .product-image{position:relative;height:210px;overflow:hidden;border-bottom:1.5px solid var(--line-strong);background:var(--paper-deep);}
  .product-image img{width:100%;height:100%;object-fit:cover;}

  .product-badge{
    position:absolute;top:10px;left:10px;
    padding:5px 9px;
    background:var(--brick);color:var(--white);
    font-size:10px;font-weight:800;
    z-index:2;
  }
  .wishlist{
    position:absolute;top:10px;right:10px;
    width:32px;height:32px;
    display:grid;place-items:center;
    border:1.5px solid var(--ink);
    background:var(--white);color:var(--ink);
    cursor:pointer;z-index:2;
    transition:.15s ease;
  }
  .wishlist:hover,.wishlist.active{background:var(--brick);color:var(--white);border-color:var(--brick);}

  .product-body{padding:16px;flex:1;}
  .product-category{color:var(--forest);font-size:10.5px;font-weight:800;letter-spacing:.02em;margin-bottom:7px;}
  .product h3{font-size:15px;margin-bottom:9px;font-weight:700;}
  .rating{color:var(--marigold);font-size:12px;margin-bottom:11px;}
  .rating span{color:var(--ink-soft);margin-left:3px;}
  .price{font-family:'Archivo Black',sans-serif;font-size:18px;}
  .old-price{color:#a39c8c;font-size:12px;text-decoration:line-through;margin-left:6px;font-family:'Work Sans',sans-serif;font-weight:600;}

  .product-footer{padding:0 16px 16px;}
  .add-btn{
    width:100%;
    display:flex;align-items:center;justify-content:center;gap:8px;
    padding:11px;
    border:1.5px solid var(--ink);
    background:var(--ink);color:var(--paper);
    font-weight:700;font-size:13px;
    cursor:pointer;transition:.15s ease;
  }
  .add-btn:hover{background:var(--brick);border-color:var(--brick);}
  .add-btn:disabled{background:var(--forest);border-color:var(--forest);cursor:default;}

  .empty-state{grid-column:1/-1;padding:60px;text-align:center;border:1.5px dashed var(--line-strong);}
  .empty-state i{font-size:34px;color:var(--brick);margin-bottom:12px;}

  /* ============ FLASH SALE ============ */
  .deal{
    display:flex;
    background:var(--ink);
    color:var(--paper);
    border:2px solid var(--ink);
  }
  .deal-image{width:44%;min-height:380px;object-fit:cover;border-right:2px solid var(--ink);filter:grayscale(20%);}
  .deal-content{flex:1;padding:44px;position:relative;}
  .deal-tag{display:inline-block;background:var(--marigold);color:var(--ink);padding:5px 10px;font-size:12px;font-weight:800;margin-bottom:18px;}
  .deal-content h2{font-size:32px;margin-bottom:12px;}
  .deal-description{color:#c9c2b2;max-width:380px;margin-bottom:22px;}

  .timer{display:flex;gap:10px;flex-wrap:wrap;margin-bottom:24px;}
  .time-box{
    min-width:66px;padding:10px 8px;text-align:center;
    border:1.5px solid rgba(246,241,227,.35);
  }
  .time-box strong{display:block;font-family:'Archivo Black',sans-serif;font-size:20px;}
  .time-box span{font-size:9.5px;color:#c9c2b2;letter-spacing:.03em;}

  .deal-price{display:flex;align-items:baseline;gap:12px;margin-bottom:18px;}
  .deal-price strong{font-family:'Archivo Black',sans-serif;font-size:30px;color:var(--marigold);}
  .deal-price .old-price{color:#8b8579;}
  .discount{padding:5px 9px;background:var(--brick);color:var(--white);font-size:12px;font-weight:800;}

  .stock-note{color:#c9c2b2;font-size:13.5px;margin-bottom:20px;}
  .stock-note strong{color:var(--paper);}

  .deal .btn-primary{background:var(--marigold);color:var(--ink);border-color:var(--marigold);}
  .deal .btn-primary:hover{background:var(--paper);border-color:var(--paper);}

  /* ============ TESTIMONIALS ============ */
  .testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:1.5px;background:var(--line-strong);border:1.5px solid var(--line-strong);}
  .testimonial{background:var(--white);padding:28px;}
  .testimonial-stars{color:var(--marigold);margin-bottom:14px;font-size:13px;}
  .testimonial p{color:var(--ink-soft);font-size:14px;margin-bottom:20px;}
  .customer{display:flex;align-items:center;gap:11px;}
  .customer img{width:40px;height:40px;object-fit:cover;border:1.5px solid var(--ink);}
  .customer strong{display:block;font-size:13px;}
  .customer small{color:var(--ink-soft);font-size:11px;}

  /* ============ NEWSLETTER ============ */
  .newsletter{
    background:var(--forest);color:var(--white);
    padding:48px 30px;text-align:center;
    border:2px solid var(--ink);
  }
  .newsletter h2{font-size:26px;margin-bottom:8px;}
  .newsletter p{color:#cfe0d8;margin-bottom:22px;}
  .newsletter-form{display:flex;justify-content:center;gap:0;max-width:480px;margin:0 auto;}
  .newsletter-form input{
    flex:1;min-width:0;padding:13px 16px;
    border:1.5px solid var(--white);border-right:none;
    background:var(--white);color:var(--ink);outline:none;
  }
  .newsletter-form .btn{border-color:var(--white);}
  .newsletter-message{margin-top:14px;font-size:13px;}

  /* ============ FOOTER ============ */
  footer{margin-top:24px;padding:56px 0 26px;background:var(--ink);color:var(--paper);}
  .footer-grid{display:grid;grid-template-columns:1.5fr 1fr 1fr 1fr;gap:36px;}
  .footer-brand{font-family:'Archivo Black',sans-serif;font-size:19px;margin-bottom:12px;}
  .footer-text{max-width:300px;color:#a9a394;font-size:13px;}
  footer h4{margin-bottom:13px;font-size:13.5px;}
  .footer-links{display:grid;gap:9px;}
  .footer-links a{color:#a9a394;font-size:13px;transition:color .15s ease;}
  .footer-links a:hover{color:var(--marigold);}
  .socials{display:flex;gap:8px;margin-top:20px;}
  .socials a{width:35px;height:35px;display:grid;place-items:center;border:1.5px solid #46453f;color:var(--paper);transition:.15s ease;}
  .socials a:hover{background:var(--marigold);border-color:var(--marigold);color:var(--ink);}
  .copyright{margin-top:40px;padding-top:22px;border-top:1px solid #34332e;text-align:center;color:#7f7a6c;font-size:11px;}

  /* ============ TOAST ============ */
  .toast{
    position:fixed;right:20px;bottom:20px;z-index:9999;
    display:flex;align-items:center;gap:10px;
    padding:13px 17px;
    background:var(--ink);color:var(--paper);
    border:1.5px solid var(--ink);
    transform:translateY(120px);opacity:0;
    transition:.25s ease;font-size:13px;font-weight:600;
  }
  .toast.show{transform:translateY(0);opacity:1;}
  .toast i{color:var(--marigold);}

  /* ============ RESPONSIVE ============ */
  @media (max-width:1100px){
    .categories{grid-template-columns:repeat(3,1fr);}
    .products{grid-template-columns:repeat(3,1fr);}
    .search{width:180px;}
    .hero-grid{grid-template-columns:1fr;}
    .hero-figure img{height:320px;}
  }
  @media (max-width:900px){
    .main-nav{display:none;}
    .mobile-toggle{display:block;}
    .search{width:190px;}
    .products{grid-template-columns:repeat(2,1fr);}
    .deal{flex-direction:column;}
    .deal-image{width:100%;height:240px;border-right:none;border-bottom:2px solid var(--ink);}
    .testimonials{grid-template-columns:1fr;}
    .footer-grid{grid-template-columns:repeat(2,1fr);}
  }
  @media (max-width:600px){
    .container{padding:0 16px;}
    .brand{font-size:18px;}
    .search{display:none;}
    .hero{padding-top:36px;}
    .hero-copy{padding-bottom:32px;}
    .categories{grid-template-columns:repeat(2,1fr);}
    .products{grid-template-columns:1fr;}
    .section{padding:44px 0;}
    .section-head{flex-direction:column;align-items:flex-start;gap:8px;}
    .deal-content{padding:26px 22px;}
    .newsletter-form{flex-direction:column;}
    .newsletter-form input{border-right:1.5px solid var(--white);}
    .footer-grid{grid-template-columns:1fr;gap:28px;}
    .price-sticker{right:8px;}
  }
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div class="header-left">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand">Nexus<span class="dot">Shop</span></a>
    </div>

    <nav class="main-nav">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>

    <div class="header-right">
      <div class="search">
        <i class="fas fa-search"></i>
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
      </div>
      <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      <button class="icon-btn cart" id="cartBtn" title="Shopping cart" aria-label="Shopping cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <div class="mobile-menu" id="mobileMenu">
    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Trending</a>
    <a href="#deals">Deals</a>
    <a href="#about">About</a>
  </div>
</header>

<main>

  <section class="hero">
    <div class="container hero-grid">
      <div class="hero-copy">
        <div class="hero-tag">Fall Catalog · 2026</div>
        <h1>Goods worth<br>keeping <em>around</em>.</h1>
        <p>A tight selection of tech, footwear and everyday carry — picked for build quality, not just the sale price.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop the catalog <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">See today's deal</button>
        </div>
      </div>
      <div class="hero-figure">
        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85" alt="Featured product">
        <div class="price-sticker">
          <small>Featured pick</small>
          <strong>$349</strong>
        </div>
      </div>
    </div>
  </section>

  <section class="section container" id="categories">
    <div class="section-head">
      <h2 class="display">Shop by category</h2>
      <p>Six departments, no filler aisles.</p>
    </div>
    <div class="categories" id="categoriesGrid"></div>
  </section>

  <section class="section container" id="products">
    <div class="section-head">
      <h2 class="display">Trending this week</h2>
      <p>What customers are actually buying, updated weekly.</p>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section class="section container" id="deals">
    <div class="section-head">
      <h2 class="display">Today's deal</h2>
      <p>One product, one price cut, gone at midnight.</p>
    </div>
    <div class="deal">
      <img class="deal-image" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="MacBook Air">
      <div class="deal-content">
        <div class="deal-tag">Deal of the day</div>
        <h2 class="display">MacBook Air M2</h2>
        <p class="deal-description">Thin, light and quick to wake up. Built for people who move between rooms, not just tabs.</p>

        <div class="timer">
          <div class="time-box"><strong id="dealDays">00</strong><span>Days</span></div>
          <div class="time-box"><strong id="dealHours">00</strong><span>Hours</span></div>
          <div class="time-box"><strong id="dealMinutes">00</strong><span>Minutes</span></div>
          <div class="time-box"><strong id="dealSeconds">00</strong><span>Seconds</span></div>
        </div>

        <div class="deal-price">
          <strong>$999</strong>
          <span class="old-price">$1,199</span>
          <span class="discount">-17%</span>
        </div>

        <p class="stock-note"><i class="fas fa-fire"></i> Only <strong>12</strong> left in stock</p>

        <button class="btn btn-primary" id="buyDeal">Buy this deal <i class="fas fa-shopping-cart"></i></button>
      </div>
    </div>
  </section>

  <section class="section container" id="about">
    <div class="section-head">
      <h2 class="display">Customer notes</h2>
      <p>Unedited, from verified orders.</p>
    </div>
    <div class="testimonials">
      <article class="testimonial">
        <div class="testimonial-stars">★★★★★</div>
        <p>"Fast shipping, careful packaging and support that actually replies. The product beat what I expected."</p>
        <div class="customer">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Ava Martin">
          <div><strong>Ava Martin</strong><small>Verified buyer</small></div>
        </div>
      </article>
      <article class="testimonial">
        <div class="testimonial-stars">★★★★★</div>
        <p>"Easy to browse, easy to check out. Good range without the usual clutter of options."</p>
        <div class="customer">
          <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" alt="Michael Lee">
          <div><strong>Michael Lee</strong><small>Frequent buyer</small></div>
        </div>
      </article>
      <article class="testimonial">
        <div class="testimonial-stars">★★★★★</div>
        <p>"Good deals on things I'd actually buy at full price. This is my first stop before anywhere else now."</p>
        <div class="customer">
          <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="Sophia Williams">
          <div><strong>Sophia Williams</strong><small>Verified buyer</small></div>
        </div>
      </article>
    </div>
  </section>

  <section class="section container">
    <div class="newsletter">
      <h2 class="display">Get the next catalog first</h2>
      <p>New arrivals and deal drops, roughly twice a month, no spam.</p>
      <form class="newsletter-form" id="newsletterForm">
        <input id="newsletterEmail" type="email" placeholder="Enter your email address" aria-label="Email address" required>
        <button type="submit" class="btn">Subscribe</button>
      </form>
      <div class="newsletter-message" id="newsletterMsg"></div>
    </div>
  </section>

</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-brand">NexusShop</div>
      <p class="footer-text">A small, carefully edited marketplace for tech, footwear and everyday accessories.</p>
      <div class="socials">
        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div>
      <h4>Shop</h4>
      <div class="footer-links">
        <a href="#products">Trending products</a>
        <a href="#categories">Categories</a>
        <a href="#deals">Flash deals</a>
        <a href="#">New arrivals</a>
      </div>
    </div>
    <div>
      <h4>Company</h4>
      <div class="footer-links">
        <a href="#about">About us</a>
        <a href="#">Careers</a>
        <a href="#">Our story</a>
        <a href="#">Press</a>
      </div>
    </div>
    <div>
      <h4>Support</h4>
      <div class="footer-links">
        <a href="#">Help center</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
        <a href="#">Contact us</a>
      </div>
    </div>
  </div>
  <div class="container copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="toast" id="toast">
  <i class="fas fa-circle-check"></i>
  <span id="toastMessage">Added to cart</span>
</div>

<script>
  const CATEGORIES = [
    { id:"phones", name:"Smartphones", icon:"fa-mobile-screen-button" },
    { id:"laptops", name:"Laptops", icon:"fa-laptop" },
    { id:"clothing", name:"Clothing", icon:"fa-shirt" },
    { id:"gadgets", name:"Gadgets", icon:"fa-headphones" },
    { id:"footwear", name:"Footwear", icon:"fa-shoe-prints" },
    { id:"accessories", name:"Accessories", icon:"fa-watch" }
  ];

  const PRODUCTS = [
    { id:1, title:"iPhone 14 Pro Max", price:1099, oldPrice:1199, rating:5, reviews:128, badge:"New", category:"phones", image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85" },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:5, reviews:86, category:"laptops", image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85" },
    { id:3, title:"Apple Watch Series 8", price:349, oldPrice:399, rating:5, reviews:214, badge:"-25%", category:"accessories", image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85" },
    { id:4, title:"Nike Air Max 270", price:150, rating:4, reviews:53, category:"footwear", image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85" },
    { id:5, title:"Sony A7 IV Camera", price:2499, rating:5, reviews:42, category:"gadgets", image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85" },
    { id:6, title:"Premium Perfume", price:120, rating:5, reviews:189, category:"accessories", image:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85" },
    { id:7, title:"Travel Backpack", price:79, oldPrice:99, rating:4, reviews:67, category:"accessories", image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85" },
    { id:8, title:"Sony WH-1000XM5", price:399, rating:5, reviews:156, category:"gadgets", image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85" }
  ];

  const categoriesGrid = document.getElementById("categoriesGrid");
  const productsGrid = document.getElementById("productsGrid");
  const searchInput = document.getElementById("searchInput");
  const cartCountEl = document.getElementById("cartCount");
  const toast = document.getElementById("toast");
  const toastMessage = document.getElementById("toastMessage");

  let cartCount = 0;

  function escapeHtml(text){
    return String(text).replace(/[&<>"']/g, c => ({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]));
  }

  let toastTimer;
  function showToast(message){
    toastMessage.textContent = message;
    toast.classList.add("show");
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove("show"), 2200);
  }

  function renderCategories(){
    categoriesGrid.innerHTML = "";
    CATEGORIES.forEach(category => {
      const card = document.createElement("div");
      card.className = "cat-card";
      card.innerHTML = `
        <div class="cat-icon"><i class="fas ${category.icon}"></i></div>
        <h4>${escapeHtml(category.name)}</h4>
        <small>Explore ${escapeHtml(category.name)}</small>
      `;
      card.addEventListener("click", () => {
        searchInput.value = category.name;
        filterProducts(category.name);
        document.getElementById("products").scrollIntoView({ behavior: "smooth" });
      });
      categoriesGrid.appendChild(card);
    });
  }

  function renderProducts(products){
    productsGrid.innerHTML = "";

    if (!products.length){
      productsGrid.innerHTML = `
        <div class="empty-state">
          <i class="fas fa-box-open"></i>
          <h3>No products found</h3>
          <p>Try another search term.</p>
        </div>
      `;
      return;
    }

    products.forEach(product => {
      const article = document.createElement("article");
      article.className = "product";
      const stars = "★".repeat(Math.round(product.rating));

      article.innerHTML = `
        <div class="product-image">
          ${product.badge ? `<span class="product-badge">${escapeHtml(product.badge)}</span>` : ""}
          <button class="wishlist" aria-label="Add to wishlist" data-wishlist="${product.id}"><i class="far fa-heart"></i></button>
          <img src="${product.image}" alt="${escapeHtml(product.title)}" loading="lazy">
        </div>
        <div class="product-body">
          <div class="product-category">${escapeHtml(product.category)}</div>
          <h3>${escapeHtml(product.title)}</h3>
          <div class="rating">${stars}<span>(${product.reviews})</span></div>
          <div class="price">
            $${product.price.toLocaleString()}
            ${product.oldPrice ? `<span class="old-price">$${product.oldPrice.toLocaleString()}</span>` : ""}
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${product.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      `;
      productsGrid.appendChild(article);
    });

    productsGrid.querySelectorAll(".add-btn").forEach(button => {
      button.addEventListener("click", () => addToCart(Number(button.dataset.id), button));
    });

    productsGrid.querySelectorAll(".wishlist").forEach(button => {
      button.addEventListener("click", () => {
        button.classList.toggle("active");
        const icon = button.querySelector("i");
        if (button.classList.contains("active")){
          icon.className = "fas fa-heart";
          showToast("Added to wishlist");
        } else {
          icon.className = "far fa-heart";
          showToast("Removed from wishlist");
        }
      });
    });
  }

  function addToCart(productId, button){
    const product = PRODUCTS.find(item => item.id === productId);
    if (!product) return;

    cartCount++;
    cartCountEl.textContent = cartCount;

    const original = button.innerHTML;
    button.innerHTML = `<i class="fas fa-check"></i> Added`;
    button.disabled = true;
    showToast(`${product.title} added to cart`);

    setTimeout(() => {
      button.innerHTML = original;
      button.disabled = false;
    }, 1400);
  }

  function filterProducts(query){
    const value = String(query || "").trim().toLowerCase();
    if (!value){ renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p =>
      p.title.toLowerCase().includes(value) || p.category.toLowerCase().includes(value)
    );
    renderProducts(filtered);
  }

  searchInput.addEventListener("input", e => filterProducts(e.target.value));

  const mobileToggle = document.getElementById("mobileToggle");
  const mobileMenu = document.getElementById("mobileMenu");
  mobileToggle.addEventListener("click", () => {
    mobileMenu.classList.toggle("open");
    const icon = mobileToggle.querySelector("i");
    icon.className = mobileMenu.classList.contains("open") ? "fas fa-xmark" : "fas fa-bars";
  });
  mobileMenu.querySelectorAll("a").forEach(link => {
    link.addEventListener("click", () => {
      mobileMenu.classList.remove("open");
      mobileToggle.querySelector("i").className = "fas fa-bars";
    });
  });

  document.getElementById("shopNow").addEventListener("click", () => {
    document.getElementById("products").scrollIntoView({ behavior: "smooth" });
  });
  document.getElementById("exploreDeals").addEventListener("click", () => {
    document.getElementById("deals").scrollIntoView({ behavior: "smooth" });
  });
  document.getElementById("buyDeal").addEventListener("click", () => {
    cartCount++;
    cartCountEl.textContent = cartCount;
    showToast("MacBook Air M2 added to cart");
  });
  document.getElementById("cartBtn").addEventListener("click", () => {
    showToast(cartCount === 0 ? "Your cart is empty" : `You have ${cartCount} item(s) in your cart`);
  });

  document.getElementById("newsletterForm").addEventListener("submit", event => {
    event.preventDefault();
    const email = document.getElementById("newsletterEmail").value.trim();
    const message = document.getElementById("newsletterMsg");

    if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)){
      message.textContent = "Please enter a valid email address.";
      message.style.color = "#BD4128";
      return;
    }

    message.textContent = "You're subscribed! Welcome to NexusShop.";
    message.style.color = "#E7A93C";
    document.getElementById("newsletterEmail").value = "";
    showToast("Subscription successful");
    setTimeout(() => { message.textContent = ""; }, 4000);
  });

  function setupCountdown(){
    const target = new Date(Date.now() + (24*60*60*1000) + (36*60*1000));

    function updateCountdown(){
      const difference = target - Date.now();
      const set = (id, val) => document.getElementById(id).textContent = String(val).padStart(2,"0");

      if (difference <= 0){
        ["dealDays","dealHours","dealMinutes","dealSeconds"].forEach(id => set(id,0));
        return;
      }

      const days = Math.floor(difference / (1000*60*60*24));
      const hours = Math.floor((difference % (1000*60*60*24)) / (1000*60*60));
      const minutes = Math.floor((difference % (1000*60*60)) / (1000*60));
      const seconds = Math.floor((difference % (1000*60)) / 1000);

      set("dealDays", days);
      set("dealHours", hours);
      set("dealMinutes", minutes);
      set("dealSeconds", seconds);
    }

    updateCountdown();
    setInterval(updateCountdown, 1000);
  }

  renderCategories();
  renderProducts(PRODUCTS);
  setupCountdown();
  document.getElementById("year").textContent = new Date().getFullYear();
</script>

</body>
</html>
