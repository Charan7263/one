<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>nexus— User Friendly E-Commerce</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
 --bg:#fafaf8;--card:#fff;--text:#1a1a2e;--muted:#6b6b7a;--line:#ecebe8;
 --accent:#e07a5f;--accent-dark:#c05a3e;--accent-soft:#f8e4dc;
 --success:#2a9d8f;--warning:#e9c46a;--surface:#f2f1ef;
 --radius:18px;--shadow:0 5px 25px rgba(26,26,46,.07);
 --container:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
button,input{font:inherit}button{border:0;cursor:pointer}a{text-decoration:none;color:inherit}
.container{width:min(100% - 32px,var(--container));margin:auto}
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.94);backdrop-filter:blur(14px);border-bottom:1px solid var(--line)}
.header{min-height:70px;display:flex;align-items:center;gap:18px}
.brand{display:flex;align-items:center;gap:9px;font-size:21px;font-weight:800;white-space:nowrap}
.brand i,.accent{color:var(--accent)}
nav{margin:auto}
nav ul{display:flex;gap:4px;list-style:none}
nav a{padding:9px 13px;border-radius:10px;color:var(--muted);font-size:14px}
nav a:hover,nav a.active{background:var(--surface);color:var(--text)}
.header-right{display:flex;align-items:center;gap:7px}
.search{display:flex;align-items:center;background:var(--surface);border:2px solid transparent;border-radius:999px;padding:0 14px;min-width:230px}
.search:focus-within{background:#fff;border-color:var(--accent)}
.search input{width:100%;border:0;outline:0;background:transparent;padding:10px 7px}
.icon-btn{width:40px;height:40px;border-radius:50%;display:grid;place-items:center;background:transparent;color:var(--muted);position:relative}
.icon-btn:hover{background:var(--surface);color:var(--text)}
.cart-count{position:absolute;right:-2px;top:-2px;width:19px;height:19px;border-radius:50%;display:grid;place-items:center;background:var(--accent);color:#fff;font-size:10px;font-weight:800;border:2px solid #fff}
.mobile{display:none}

.hero{margin:20px 0 0;min-height:470px;border-radius:var(--radius);overflow:hidden;position:relative;background:#1a1a2e;display:flex;align-items:center}
.hero:before{content:"";position:absolute;inset:0;background:url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85") center/cover;opacity:.34}
.hero-content{position:relative;z-index:1;padding:70px 0;max-width:650px;color:#fff}
.pill{display:inline-flex;gap:8px;align-items:center;padding:6px 14px;border-radius:999px;background:rgba(224,122,95,.2);color:#ffd5c8;font-size:13px;font-weight:700;margin-bottom:16px}
.hero h1{font:700 clamp(34px,5vw,55px)/1.12 "Playfair Display",serif;margin-bottom:16px}
.hero p{font-size:17px;color:rgba(255,255,255,.8);max-width:550px;margin-bottom:27px}
.actions{display:flex;gap:11px;flex-wrap:wrap}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 22px;border-radius:999px;font-weight:700;transition:.2s}
.btn-primary{background:var(--accent);color:#fff}
.btn-primary:hover{background:var(--accent-dark);transform:translateY(-2px)}
.btn-light{background:#fff;color:var(--text)}
.btn-light:hover{transform:translateY(-2px)}
.btn-dark{background:var(--text);color:#fff}
.btn-outline{background:transparent;border:1px solid #ddd;color:var(--text)}
.btn:hover{box-shadow:0 8px 22px rgba(0,0,0,.1)}

.section{padding:55px 0}
.section-head{display:flex;justify-content:space-between;align-items:end;gap:15px;margin-bottom:25px}
.section-head h2{font-size:28px}
.section-head p{color:var(--muted);font-size:14px;margin-top:3px}
.view{color:var(--accent);font-weight:700;font-size:14px}

.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category{background:var(--card);border:1px solid var(--line);border-radius:var(--radius);padding:22px 12px;text-align:center;cursor:pointer;transition:.2s}
.category:hover{transform:translateY(-4px);border-color:#f0c6b8;box-shadow:var(--shadow)}
.cat-icon{width:54px;height:54px;border-radius:50%;margin:0 auto 11px;display:grid;place-items:center;background:var(--accent-soft);color:var(--accent);font-size:22px}
.category h4{font-size:14px}.category span{font-size:12px;color:var(--muted)}

.toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:18px;flex-wrap:wrap}
.results{font-size:14px;color:var(--muted)}
.filters{display:flex;gap:8px}
select{border:1px solid var(--line);background:#fff;border-radius:10px;padding:9px 12px;outline:none}

.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{background:#fff;border:1px solid var(--line);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:.2s;display:flex;flex-direction:column}
.product:hover{transform:translateY(-5px);box-shadow:0 14px 40px rgba(26,26,46,.11)}
.product-img{height:245px;position:relative;background:var(--surface);overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.3s}
.product:hover img{transform:scale(1.04)}
.badge{position:absolute;left:11px;top:11px;background:var(--accent);color:#fff;border-radius:999px;padding:4px 10px;font-size:10px;font-weight:800}
.badge.sale{background:var(--warning);color:var(--text)}
.wish{position:absolute;right:11px;top:11px;width:35px;height:35px;border-radius:50%;background:rgba(255,255,255,.93);color:var(--muted)}
.wish.active{color:var(--accent)}
.product-body{padding:15px 16px 10px;flex:1}
.category-name{text-transform:uppercase;font-size:10px;letter-spacing:.7px;color:#a0a0b0;font-weight:800}
.product h3{font-size:15px;margin:4px 0 8px}
.rating{font-size:12px;color:#f5a623}.rating span{color:var(--muted);margin-left:4px}
.price{display:flex;align-items:center;gap:8px;margin-top:8px}
.price strong{font-size:18px}.old{text-decoration:line-through;color:#aaa;font-size:13px}
.product-footer{padding:0 16px 16px}
.add{width:100%;padding:10px;border-radius:10px;background:var(--text);color:#fff;font-weight:700}
.add:hover{background:var(--accent)}
.add.added{background:var(--success)}

.deal{display:grid;grid-template-columns:1fr 1fr;background:#fff;border:1px solid var(--line);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow)}
.deal-img{min-height:330px}.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-content{padding:40px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{display:inline-block;align-self:flex-start;background:var(--warning);padding:4px 12px;border-radius:999px;font-size:11px;font-weight:800;margin-bottom:12px}
.deal h3{font-size:29px;margin-bottom:6px}.deal p{color:var(--muted)}
.deal-price{font-size:31px;font-weight:800;margin-top:10px}.deal-price del{font-size:18px;color:#aaa;font-weight:400;margin-left:7px}
.stock{margin:3px 0 13px;font-size:13px}.stock b{color:var(--accent)}
.timer{display:flex;gap:9px;margin:13px 0 20px}
.timer-box{background:var(--text);color:#fff;border-radius:10px;min-width:62px;padding:8px;text-align:center}
.timer-box b{display:block;font-size:21px}.timer-box small{font-size:9px;opacity:.7;text-transform:uppercase}

.testimonials{display:flex;gap:18px;overflow-x:auto;padding:3px 2px 14px}
.review{flex:0 0 320px;background:#fff;border:1px solid var(--line);border-radius:var(--radius);padding:22px;box-shadow:var(--shadow)}
.review .stars{color:#f5a623;margin-bottom:8px}.review blockquote{font-size:14px;font-style:italic;margin-bottom:15px}
.author{display:flex;align-items:center;gap:10px}.author img{width:42px;height:42px;border-radius:50%;object-fit:cover}.author b{font-size:13px}.author small{display:block;color:var(--muted)}

.newsletter{background:linear-gradient(135deg,#1a1a2e,#2d2d44);color:#fff;border-radius:var(--radius);padding:40px;display:flex;align-items:center;justify-content:space-between;gap:25px}
.newsletter h2{font-size:25px}.newsletter p{opacity:.72;font-size:14px}
.newsletter form{display:flex;gap:9px;max-width:500px;width:100%}
.newsletter input{flex:1;min-width:0;padding:13px 17px;border:0;border-radius:999px;background:rgba(255,255,255,.12);color:#fff;outline:0}
.newsletter input::placeholder{color:rgba(255,255,255,.5)}

footer{padding:42px 0 25px;border-top:1px solid var(--line);margin-top:10px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px}
.footer-grid p,.footer-grid a{font-size:13px;color:var(--muted)}.footer-grid h4{font-size:14px;margin-bottom:10px}.footer-grid ul{list-style:none;display:grid;gap:6px}
.socials{display:flex;gap:8px;margin-top:14px}.socials a{width:36px;height:36px;background:var(--surface);border-radius:50%;display:grid;place-items:center}.copyright{text-align:center;border-top:1px solid var(--line);margin-top:30px;padding-top:18px;color:#aaa;font-size:12px}

.drawer{position:fixed;inset:0;background:rgba(0,0,0,.4);z-index:200;display:none}
.drawer.open{display:block}
.cart-panel{position:absolute;right:0;top:0;height:100%;width:min(420px,100%);background:#fff;padding:22px;display:flex;flex-direction:column}
.cart-head{display:flex;justify-content:space-between;align-items:center;padding-bottom:15px;border-bottom:1px solid var(--line)}
.cart-items{flex:1;overflow:auto;padding:15px 0}
.cart-item{display:flex;gap:12px;padding:12px 0;border-bottom:1px solid var(--line)}
.cart-item img{width:65px;height:65px;border-radius:10px;object-fit:cover}
.cart-item h4{font-size:13px}.cart-item p{font-size:13px;font-weight:700;margin-top:4px}
.qty{display:flex;align-items:center;gap:8px;margin-top:6px}.qty button{width:25px;height:25px;border-radius:6px;background:var(--surface)}
.cart-total{border-top:1px solid var(--line);padding-top:15px}.total-row{display:flex;justify-content:space-between;font-weight:800;font-size:17px;margin-bottom:13px}
.empty{text-align:center;color:var(--muted);padding:50px 10px}

.toast{position:fixed;left:50%;bottom:25px;transform:translate(-50%,20px);background:var(--text);color:#fff;padding:11px 18px;border-radius:999px;opacity:0;pointer-events:none;transition:.25s;z-index:400;font-size:13px}
.toast.show{opacity:1;transform:translate(-50%,0)}

@media(max-width:1100px){.products{grid-template-columns:repeat(3,1fr)}.categories{grid-template-columns:repeat(3,1fr)}}
@media(max-width:850px){nav{display:none}.mobile{display:grid}.header{gap:8px}.search{min-width:0;flex:1}.deal{grid-template-columns:1fr}.deal-img{min-height:250px}.newsletter{flex-direction:column;align-items:stretch}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:620px){
 .container{width:min(100% - 20px,var(--container))}
 .header{min-height:62px}.brand{font-size:18px}.header-right{flex:1}.search{order:0}.search input{padding:8px 4px}.icon-btn{width:36px;height:36px}
 .hero{margin-top:10px;min-height:400px}.hero-content{padding:45px 0}.hero p{font-size:15px}
 .section{padding:40px 0}.section-head h2{font-size:22px}
 .categories{grid-template-columns:repeat(2,1fr);gap:9px}.category{padding:16px 8px}
 .products{grid-template-columns:repeat(2,1fr);gap:10px}.product-img{height:175px}.product-body{padding:11px}.product-footer{padding:0 11px 11px}.product h3{font-size:13px}.price strong{font-size:15px}.add{font-size:12px}
 .deal-content{padding:25px 20px}.deal h3{font-size:23px}.timer-box{min-width:50px}.timer-box b{font-size:17px}
 .newsletter{padding:28px 20px}.newsletter form{flex-direction:column}.newsletter input{width:100%}
 .footer-grid{grid-template-columns:1fr}.view{font-size:12px}
}
</style>
</head>
<body>

<header>
 <div class="container header">
  <button class="icon-btn mobile" id="menuBtn" aria-label="Menu"><i class="fa-solid fa-bars"></i></button>
  <a class="brand" href="#"><i class="fa-solid fa-store"></i> Nexus<span class="accent">Shop</span></a>
  <nav><ul>
   <li><a class="active" href="#home">Home</a></li><li><a href="#categories">Categories</a></li>
   <li><a href="#products">Trending</a></li><li><a href="#deals">Deals</a></li><li><a href="#reviews">Reviews</a></li>
  </ul></nav>
  <div class="header-right">
   <div class="search"><i class="fa-solid fa-magnifying-glass muted"></i><input id="search" type="search" placeholder="Search products..."></div>
   <button class="icon-btn" title="Wishlist" id="wishlistBtn"><i class="fa-regular fa-heart"></i></button>
   <button class="icon-btn" title="Cart" id="cartBtn"><i class="fa-solid fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span></button>
  </div>
 </div>
</header>

<div class="drawer" id="cartDrawer">
 <aside class="cart-panel">
  <div class="cart-head"><h2>Your Cart</h2><button class="icon-btn" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-total"><div class="total-row"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary" style="width:100%" id="checkout">Proceed to Checkout</button></div>
 </aside>
</div>

<main id="home">
<section class="hero">
 <div class="container hero-content">
  <div class="pill"><i class="fa-solid fa-sparkles"></i> New Hijab Collection 2026 october for new hijabie welcome !!!!</div>
  <h1>Discover Premium Essentials</h1>
  <p>Shop curated fashion, technology and everyday accessories with a simple, friendly shopping experience.</p>
  <div class="actions"><button class="btn btn-primary" id="shopNow">Shop Now <i class="fa-solid fa-arrow-right"></i></button><button class="btn btn-light" id="dealNow">Explore Deals <i class="fa-solid fa-bolt"></i></button></div>
 </div>
</section>

<section class="section" id="categories">
 <div class="container">
  <div class="section-head"><div><h2>Browse Categories</h2><p>Find what you need quickly</p></div><a class="view" href="#products">View products →</a></div>
  <div class="categories" id="categoriesGrid"></div>
 </div>
</section>

<section class="section" id="products">
 <div class="container">
  <div class="section-head"><div><h2>Trending Now</h2><p>Popular picks from our community</p></div></div>
  <div class="toolbar"><div class="results" id="results"></div><div class="filters"><select id="categoryFilter"><option value="">All categories</option></select><select id="sort"><option value="popular">Most popular</option><option value="low">Price: low to high</option><option value="high">Price: high to low</option></select></div></div>
  <div class="products" id="productsGrid"></div>
 </div>
</section>

<section class="section" id="deals">
 <div class="container">
  <div class="section-head"><div><h2>⚡ Flash Deal</h2><p>Limited stock — don't miss it</p></div></div>
  <div class="deal">
   <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air"></div>
   <div class="deal-content"><span class="deal-tag">LIMITED OFFER</span><h3>MacBook Air M2</h3><p>Thin, light and powerful with Apple's M2 chip.</p><div class="deal-price">$999 <del>$1,199</del></div><div class="stock">Only <b>12</b> items left</div>
    <div class="timer"><div class="timer-box"><b id="d">0</b><small>Days</small></div><div class="timer-box"><b id="h">00</b><small>Hours</small></div><div class="timer-box"><b id="m">00</b><small>Mins</small></div><div class="timer-box"><b id="s">00</b><small>Secs</small></div></div>
    <button class="btn btn-primary" id="dealCart">Add to Cart <i class="fa-solid fa-cart-plus"></i></button>
   </div>
  </div>
 </div>
</section>

<section class="section" id="reviews">
 <div class="container"><div class="section-head"><div><h2>What Customers Say</h2><p>Real reviews from real shoppers</p></div></div><div class="testimonials" id="reviewsList"></div></div>
</section>

<section class="section">
 <div class="container"><div class="newsletter"><div><h2>Stay in the Loop</h2><p>Get exclusive offers and new-arrival updates.</p></div><form id="newsletter"><input id="email" type="email" placeholder="Enter your email" required><button class="btn btn-primary">Subscribe</button></form></div></div>
</section>
</main>

<footer><div class="container">
 <div class="footer-grid">
  <div><div class="brand"><i class="fa-solid fa-store"></i> Nexus<span class="accent">Shop</span></div><p style="margin-top:8px;max-width:300px">A clean e-commerce demo focused on simple browsing and a friendly shopping experience.</p><div class="socials"><a href="#"><i class="fa-brands fa-facebook-f"></i></a><a href="#"><i class="fa-brands fa-instagram"></i></a><a href="#"><i class="fa-brands fa-youtube"></i></a></div></div>
  <div><h4>Company</h4><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Blog</a></li></ul></div>
  <div><h4>Support</h4><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
  <div><h4>Legal</h4><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
 </div>
 <div class="copyright">© <span id="year"></span> HallalShop. All rights reserved.</div>
</div></footer>
<div class="toast" id="toast"></div>

<script>
const PRODUCTS=[
{id:1,title:"iPhone 14 Pro Max",price:1099,old:1199,rating:5,reviews:128,badge:"New",category:"Smartphones",icon:"fa-mobile-screen",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80"},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:"",category:"Laptops",icon:"fa-laptop",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=80"},
{id:3,title:"Apple Watch Series 8",price:349,old:399,rating:5,reviews:214,badge:"Sale",category:"Accessories",icon:"fa-clock",img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=80"},
{id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,badge:"",category:"Footwear",icon:"fa-shoe-prints",img:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=80"},
{id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,badge:"New",category:"Gadgets",icon:"fa-camera",img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80"},
{id:6,title:"Chanel No. 5",price:120,rating:5,reviews:189,badge:"",category:"Accessories",icon:"fa-spray-can-sparkles",img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=80"},
{id:7,title:"Travel Backpack",price:79,old:99,rating:4,reviews:67,badge:"Sale",category:"Accessories",icon:"fa-bag-shopping",img:"https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=80"},
{id:8,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,badge:"",category:"Gadgets",icon:"fa-headphones",img:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=80"}
];
const CATS=[
["Smartphones","fa-mobile-screen",24],["Laptops","fa-laptop",18],["Clothing","fa-shirt",42],["Gadgets","fa-headphones",31],["Footwear","fa-shoe-prints",27],["Accessories","fa-watch",39]
];
const REVIEWS=[
["Ava Martin","Verified Buyer","Fast shipping and excellent support. The product exceeded my expectations!",5,"https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"],
["Michael Lee","Frequent Shopper","Great selection and smooth checkout. Will definitely shop again.",4,"https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"],
["Sophia Chen","Designer","Love the quality and packaging. Everything arrived perfectly.",5,"https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80"],
["James Wilson","Tech Enthusiast","Amazing prices on electronics. The M2 MacBook deal was unbeatable.",5,"https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80"]
];
let cart=[],wish=new Set();

const $=id=>document.getElementById(id);
function money(n){return "$"+n.toLocaleString()}
function toast(msg){$("toast").textContent=msg;$("toast").classList.add("show");clearTimeout(window.t);window.t=setTimeout(()=>$("toast").classList.remove("show"),1800)}

function renderCats(){
 $("categoriesGrid").innerHTML=CATS.map(c=>`<div class="category" data-cat="${c[0]}"><div class="cat-icon"><i class="fa-solid ${c[1]}"></i></div><h4>${c[0]}</h4><span>${c[2]} items</span></div>`).join("");
 $("categoryFilter").innerHTML='<option value="">All categories</option>'+CATS.map(c=>`<option>${c[0]}</option>`).join("");
 document.querySelectorAll(".category").forEach(x=>x.onclick=()=>{$("categoryFilter").value=x.dataset.cat;renderProducts();$("products").scrollIntoView({behavior:"smooth"})});
}
function renderProducts(){
 let q=$("search").value.trim().toLowerCase(),cat=$("categoryFilter").value,sort=$("sort").value;
 let list=PRODUCTS.filter(p=>(!q||p.title.toLowerCase().includes(q)||p.category.toLowerCase().includes(q))&&(!cat||p.category===cat));
 if(sort==="low")list.sort((a,b)=>a.price-b.price);if(sort==="high")list.sort((a,b)=>b.price-a.price);
 $("results").textContent=`Showing ${list.length} of ${PRODUCTS.length} products`;
 $("productsGrid").innerHTML=list.length?list.map(p=>`
 <article class="product">
  <div class="product-img"><img src="${p.img}" alt="${p.title}" loading="lazy">${p.badge?`<span class="badge ${p.badge==="Sale"?"sale":""}">${p.badge}</span>`:""}
   <button class="wish ${wish.has(p.id)?"active":""}" data-wish="${p.id}"><i class="fa-${wish.has(p.id)?"solid":"regular"} fa-heart"></i></button>
  </div>
  <div class="product-body"><div class="category-name">${p.category}</div><h3>${p.title}</h3><div class="rating">${"★".repeat(p.rating)}${"☆".repeat(5-p.rating)} <span>(${p.reviews})</span></div><div class="price"><strong>${money(p.price)}</strong>${p.old?`<span class="old">${money(p.old)}</span>`:""}</div></div>
  <div class="product-footer"><button class="add" data-add="${p.id}"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button></div>
 </article>`).join(""):`<div style="grid-column:1/-1;text-align:center;padding:60px;color:var(--muted)">No products found. Try another search.</div>`;
 document.querySelectorAll("[data-add]").forEach(b=>b.onclick=()=>addCart(+b.dataset.add,b));
 document.querySelectorAll("[data-wish]").forEach(b=>b.onclick=()=>toggleWish(+b.dataset.wish));
}
function addCart(id,btn){
 let p=PRODUCTS.find(x=>x.id===id),item=cart.find(x=>x.id===id);
 if(item)item.qty++;else cart.push({id,qty:1});
 updateCart();toast(p.title+" added to cart");
 if(btn){let old=btn.innerHTML;btn.innerHTML='<i class="fa-solid fa-check"></i> Added';btn.classList.add("added");setTimeout(()=>{btn.innerHTML=old;btn.classList.remove("added")},1000)}
}
function updateCart(){
 let count=cart.reduce((a,x)=>a+x.qty,0);$("cartCount").textContent=count;
 $("cartItems").innerHTML=cart.length?cart.map(x=>{let p=PRODUCTS.find(y=>y.id===x.id);return `<div class="cart-item"><img src="${p.img}"><div style="flex:1"><h4>${p.title}</h4><p>${money(p.price)}</p><div class="qty"><button data-dec="${p.id}">−</button><span>${x.qty}</span><button data-inc="${p.id}">+</button><button style="margin-left:auto;color:#c05a3e" data-rem="${p.id}"><i class="fa-solid fa-trash"></i></button></div></div></div>`}).join(""):`<div class="empty"><i class="fa-solid fa-bag-shopping" style="font-size:32px;margin-bottom:10px"></i><br>Your cart is empty.</div>`;
 let total=cart.reduce((a,x)=>a+PRODUCTS.find(p=>p.id===x.id).price*x.qty,0);$("cartTotal").textContent=money(total);
 document.querySelectorAll("[data-inc]").forEach(b=>b.onclick=()=>changeQty(+b.dataset.inc,1));
 document.querySelectorAll("[data-dec]").forEach(b=>b.onclick=()=>changeQty(+b.dataset.dec,-1));
 document.querySelectorAll("[data-rem]").forEach(b=>b.onclick=()=>{cart=cart.filter(x=>x.id!==+b.dataset.rem);updateCart()});
}
function changeQty(id,n){let x=cart.find(y=>y.id===id);if(!x)return;x.qty+=n;if(x.qty<1)cart=cart.filter(y=>y.id!==id);updateCart()}
function toggleWish(id){wish.has(id)?wish.delete(id):wish.add(id);renderProducts();toast(wish.has(id)?"Added to wishlist":"Removed from wishlist")}
function openCart(){updateCart();$("cartDrawer").classList.add("open")}
$("cartBtn").onclick=openCart;$("closeCart").onclick=()=>$("cartDrawer").classList.remove("open");$("cartDrawer").onclick=e=>{if(e.target===$("cartDrawer"))$("cartDrawer").classList.remove("open")};
$("search").oninput=renderProducts;$("categoryFilter").onchange=renderProducts;$("sort").onchange=renderProducts;
$("shopNow").onclick=()=>$("products").scrollIntoView({behavior:"smooth"});$("dealNow").onclick=()=>$("deals").scrollIntoView({behavior:"smooth"});
$("dealCart").onclick=()=>{let old=$("dealCart").innerHTML;$("dealCart").innerHTML='<i class="fa-solid fa-check"></i> Added';toast("MacBook Air M2 added to cart");setTimeout(()=>$("dealCart").innerHTML=old,1200)};
$("wishlistBtn").onclick=()=>{let first=[...wish][0];if(first){$("search").value="";$("categoryFilter").value="";renderProducts();toast("Wishlist items are marked with ♥")}else toast("Your wishlist is empty")};
$("newsletter").onsubmit=e=>{e.preventDefault();toast("🎉 Thanks for subscribing!");$("email").value=""};
$("checkout").onclick=()=>cart.length?toast("Checkout demo — order ready!"):toast("Your cart is empty");
$("menuBtn").onclick=()=>{let nav=document.querySelector("nav");nav.style.display=nav.style.display==="block"?"none":"block";nav.style.position="absolute";nav.style.top="62px";nav.style.left="0";nav.style.right="0";nav.style.background="#fff";nav.style.padding="12px 20px";nav.style.borderBottom="1px solid var(--line)";nav.querySelector("ul").style.flexDirection="column"};

renderCats();renderProducts();updateCart();$("year").textContent=new Date().getFullYear();

const target=Date.now()+25*60*60*1000+36*60*1000;
function timer(){let x=Math.max(0,target-Date.now()),d=Math.floor(x/86400000),h=Math.floor(x%86400000/3600000),m=Math.floor(x%3600000/60000),s=Math.floor(x%60000/1000);$("d").textContent=d;$("h").textContent=String(h).padStart(2,"0");$("m").textContent=String(m).padStart(2,"0");$("s").textContent=String(s).padStart(2,"0")}
timer();setInterval(timer,1000);
</script>
</body>
</html>
