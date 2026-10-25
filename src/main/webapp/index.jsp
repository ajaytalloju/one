<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern E‑Commerce</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root{
  --bg:#f4f6fb; --bg-card:#fff; --primary:#1a1a2e; --primary-light:#2d2d44;
  --accent:#4a90e2; --accent-light:#d4e4f9; --accent-dark:#357abd;
  --muted:#6b6b7a; --muted-light:#a0a0b0; --surface:#eef2f9;
  --success:#2a9d8f; --warning:#e9c46a;
  --radius:16px; --radius-sm:10px;
  --shadow:0 4px 24px rgba(26,26,46,.06);
  --shadow-hover:0 12px 48px rgba(26,26,46,.10);
  --transition:.25s cubic-bezier(.4,0,.2,1);
  --container:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:'Inter',system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--primary);line-height:1.5;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit}
input{font-family:inherit}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}
.muted{color:var(--muted)}
.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}

/* BUTTONS */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 28px;border-radius:999px;font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent);box-shadow:0 4px 14px rgba(74,144,226,.30)}
.btn-primary:hover{background:var(--accent-dark);border-color:var(--accent-dark);transform:translateY(-2px);box-shadow:0 8px 24px rgba(74,144,226,.40)}
.btn-secondary{background:var(--primary);color:#fff;border-color:var(--primary)}
.btn-secondary:hover{background:var(--primary-light);border-color:var(--primary-light);transform:translateY(-2px);box-shadow:0 8px 24px rgba(26,26,46,.20)}
.btn-outline{background:transparent;color:var(--primary);border-color:rgba(26,26,46,.15)}
.btn-outline:hover{background:var(--primary);color:#fff;border-color:var(--primary);transform:translateY(-2px)}
.btn-ghost{background:rgba(255,255,255,.15);color:#fff;border-color:rgba(255,255,255,.25)}
.btn-ghost:hover{background:rgba(255,255,255,.25);border-color:rgba(255,255,255,.4);transform:translateY(-2px)}

/* HEADER */
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.92);backdrop-filter:blur(16px);-webkit-backdrop-filter:blur(16px);border-bottom:1px solid rgba(26,26,46,.04)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:12px 0;min-height:68px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;letter-spacing:-.5px;color:var(--primary);flex-shrink:0}
.brand .accent{color:var(--accent)}
.brand i{font-size:26px;color:var(--accent)}
nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center}
nav.main-nav li a{display:flex;align-items:center;gap:6px;padding:8px 16px;border-radius:var(--radius-sm);font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition)}
nav.main-nav li a:hover,nav.main-nav li a.active{background:var(--surface);color:var(--accent)}
nav.main-nav li a i{font-size:14px}
.header-actions{display:flex;align-items:center;gap:6px;flex-shrink:0}
.header-actions .icon-btn{width:42px;height:42px;display:grid;place-items:center;border-radius:50%;font-size:18px;color:var(--muted);transition:var(--transition);position:relative}
.header-actions .icon-btn:hover{background:var(--surface);color:var(--accent)}
.cart-wrap{position:relative}
.cart-count{position:absolute;top:-2px;right:-2px;background:var(--accent);color:#fff;font-size:11px;font-weight:700;width:20px;height:20px;border-radius:50%;display:grid;place-items:center;border:2px solid #fff;transition:transform .2s ease}
.search-wrap{display:flex;align-items:center;background:var(--surface);border-radius:999px;padding:0 16px 0 18px;transition:var(--transition);border:2px solid transparent;min-width:220px}
.search-wrap:focus-within{border-color:var(--accent);background:#fff;box-shadow:0 0 0 4px rgba(74,144,226,.12)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:10px 0;font-size:14px;color:var(--primary)}
.search-wrap input::placeholder{color:var(--muted-light)}
.search-wrap button{padding:8px 0 8px 10px;color:var(--muted);font-size:15px;transition:var(--transition)}
.search-wrap button:hover{color:var(--accent)}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:50%;font-size:20px;background:var(--surface);color:var(--primary);transition:var(--transition)}
.mobile-toggle:hover{background:var(--accent-light);color:var(--accent-dark)}
#mobileMenu{display:none;background:#fff;border-top:1px solid rgba(26,26,46,.04);padding:12px 0 20px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu ul li a{display:flex;align-items:center;gap:12px;padding:12px 16px;border-radius:var(--radius-sm);font-weight:500;color:var(--primary);transition:var(--transition)}
#mobileMenu ul li a:hover{background:var(--surface);color:var(--accent)}
#mobileMenu ul li a i{width:22px;color:var(--muted)}

/* HERO */
.hero{position:relative;display:flex;align-items:center;min-height:480px;padding:60px 0;border-radius:var(--radius);overflow:hidden;margin:20px 24px 0;background:linear-gradient(135deg,#1a1a2e 0%,#2d3a5c 100%)}
.hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;opacity:.35;z-index:0}
.hero .container{position:relative;z-index:1}
.hero .badge{display:inline-block;background:rgba(74,144,226,.22);color:#8bc0f5;padding:4px 16px;border-radius:999px;font-weight:600;font-size:13px;letter-spacing:.3px;margin-bottom:16px;border:1px solid rgba(74,144,226,.30)}
.hero h1{font-family:'Playfair Display',serif;font-size:48px;font-weight:700;color:#fff;line-height:1.15;max-width:640px;margin-bottom:16px;text-shadow:0 4px 16px rgba(0,0,0,.35)}
.hero p{color:rgba(255,255,255,.80);font-size:17px;max-width:520px;margin-bottom:28px;line-height:1.6}
.hero .actions{display:flex;gap:12px;flex-wrap:wrap}

/* SECTION */
.section{padding:56px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:32px;flex-wrap:wrap}
.section-header .title-group h2{font-size:28px;font-weight:700;letter-spacing:-.3px}
.section-header .title-group p{color:var(--muted);margin-top:4px;font-size:15px}
.section-header .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:6px;font-size:14px;transition:var(--transition);white-space:nowrap}
.section-header .view-all:hover{gap:12px;color:var(--accent-dark)}

/* CATEGORIES */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:16px}
.cat-card{background:var(--bg-card);border-radius:var(--radius);padding:24px 16px;text-align:center;box-shadow:var(--shadow);transition:var(--transition);cursor:pointer;border:2px solid transparent}
.cat-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.cat-card .icon-wrap{width:56px;height:56px;border-radius:50%;background:var(--accent-light);display:grid;place-items:center;margin:0 auto 12px;font-size:24px;color:var(--accent);transition:var(--transition)}
.cat-card:hover .icon-wrap{background:var(--accent);color:#fff;transform:scale(1.08)}
.cat-card h4{font-size:15px;font-weight:600}
.cat-card .count{font-size:13px;color:var(--muted);margin-top:4px}

/* PRODUCTS */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
.product-card{background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.product-card .img-wrap{position:relative;overflow:hidden;background:var(--surface);aspect-ratio:1/1}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
.product-card:hover .img-wrap img{transform:scale(1.04)}
.product-card .badge{position:absolute;top:12px;left:12px;background:var(--accent);color:#fff;padding:4px 12px;border-radius:999px;font-size:11px;font-weight:700;letter-spacing:.3px;box-shadow:0 2px 8px rgba(74,144,226,.35)}
.product-card .badge.sale{background:var(--warning);color:var(--primary)}
.product-card .wish-btn{position:absolute;top:12px;right:12px;width:36px;height:36px;border-radius:50%;background:rgba(255,255,255,.90);display:grid;place-items:center;font-size:16px;color:var(--muted);transition:var(--transition);backdrop-filter:blur(4px)}
.product-card .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.10)}
.product-card .body{padding:16px 18px 14px;flex:1;display:flex;flex-direction:column;gap:6px}
.product-card .body .category-tag{font-size:12px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.5px;font-weight:600}
.product-card .body h5{font-size:15px;font-weight:600;line-height:1.3;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.product-card .body .price-row{display:flex;align-items:center;gap:10px;margin-top:4px}
.product-card .body .price{font-weight:700;font-size:18px;color:var(--primary)}
.product-card .body .old-price{color:var(--muted-light);text-decoration:line-through;font-size:14px}
.product-card .body .rating{display:flex;align-items:center;gap:4px;font-size:13px;color:#f5a623}
.product-card .body .rating span{color:var(--muted);font-weight:400}
.product-card .footer{padding:0 18px 18px;display:flex;gap:10px}
.product-card .footer .add-btn{flex:1;padding:10px;border-radius:var(--radius-sm);background:var(--primary);color:#fff;font-weight:600;font-size:14px;transition:var(--transition);display:flex;align-items:center;justify-content:center;gap:8px}
.product-card .footer .add-btn:hover{background:var(--accent);transform:scale(1.02);box-shadow:0 4px 14px rgba(74,144,226,.35)}
.product-card .footer .add-btn.added{background:var(--success)}

/* DEAL */
.deal-wrap{display:flex;gap:0;background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow)}
.deal-wrap .deal-img{flex:0 0 48%;background:var(--surface);min-height:300px;overflow:hidden}
.deal-wrap .deal-img img{width:100%;height:100%;object-fit:cover;transition:transform .5s ease}
.deal-wrap:hover .deal-img img{transform:scale(1.04)}
.deal-wrap .deal-content{flex:1;padding:40px 44px;display:flex;flex-direction:column;justify-content:center}
.deal-wrap .deal-content .tag{display:inline-block;background:var(--warning);color:var(--primary);padding:4px 14px;border-radius:999px;font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.5px;align-self:flex-start;margin-bottom:12px}
.deal-wrap .deal-content h3{font-size:28px;font-weight:700;margin-bottom:6px}
.deal-wrap .deal-content .desc{color:var(--muted);margin-bottom:18px}
.deal-wrap .deal-content .price-big{font-size:32px;font-weight:800;color:var(--accent)}
.deal-wrap .deal-content .price-big .old{font-size:20px;font-weight:400;color:var(--muted-light);text-decoration:line-through;margin-left:10px}
.deal-wrap .deal-content .stock{font-size:14px;color:var(--muted);margin:4px 0 16px}
.deal-wrap .deal-content .stock strong{color:var(--accent)}
.timer-grid{display:flex;gap:12px;margin:16px 0 20px}
.timer-box{background:var(--primary);color:#fff;padding:10px 16px;border-radius:var(--radius-sm);min-width:68px;text-align:center;box-shadow:0 4px 12px rgba(26,26,46,.20)}
.timer-box .num{font-size:26px;font-weight:700;line-height:1.2}
.timer-box .label{font-size:11px;opacity:.70;text-transform:uppercase;letter-spacing:.5px}

/* TESTIMONIALS */
.testimonials-scroll{display:flex;gap:20px;overflow-x:auto;padding:8px 4px 16px;scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch}
.testimonials-scroll::-webkit-scrollbar{height:4px}
.testimonials-scroll::-webkit-scrollbar-thumb{background:var(--accent-light);border-radius:999px}
.testimonial-card{flex:0 0 340px;background:var(--bg-card);border-radius:var(--radius);padding:24px 26px;box-shadow:var(--shadow);scroll-snap-align:start;transition:var(--transition);border:2px solid transparent}
.testimonial-card:hover{box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.testimonial-card .stars{color:#f5a623;font-size:16px;letter-spacing:2px;margin-bottom:10px}
.testimonial-card blockquote{font-size:15px;line-height:1.6;color:var(--primary);margin-bottom:14px;font-style:italic}
.testimonial-card .author{display:flex;align-items:center;gap:12px}
.testimonial-card .author .avatar{width:44px;height:44px;border-radius:50%;object-fit:cover;background:var(--surface);border:2px solid var(--accent-light)}
.testimonial-card .author .name{font-weight:600;font-size:14px}
.testimonial-card .author .role{font-size:13px;color:var(--muted)}

/* NEWSLETTER */
.newsletter-wrap{background:linear-gradient(135deg,var(--primary) 0%,#2d3a5c 100%);border-radius:var(--radius);padding:48px 56px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:32px;flex-wrap:wrap}
.newsletter-wrap .text h3{font-size:26px;font-weight:700;margin-bottom:4px}
.newsletter-wrap .text p{opacity:.75;font-size:15px}
.newsletter-wrap form{display:flex;gap:10px;flex-wrap:wrap;flex:1;max-width:480px}
.newsletter-wrap form input{flex:1;min-width:200px;padding:14px 20px;border-radius:999px;border:0;font-size:15px;background:rgba(255,255,255,.12);color:#fff;transition:var(--transition);outline:2px solid transparent}
.newsletter-wrap form input::placeholder{color:rgba(255,255,255,.5)}
.newsletter-wrap form input:focus{outline-color:var(--accent);background:rgba(255,255,255,.18)}
.newsletter-wrap form .btn{background:var(--accent);color:#fff;border-color:var(--accent);padding:14px 32px;box-shadow:0 4px 14px rgba(74,144,226,.35)}
.newsletter-wrap form .btn:hover{background:var(--accent-dark);border-color:var(--accent-dark)}
#newsletterMsg{margin-top:12px;font-size:14px;opacity:.9;width:100%}

/* FOOTER */
footer{margin-top:16px;padding:44px 0 28px;border-top:1px solid rgba(26,26,46,.04);background:#fff}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:32px}
.footer-grid .brand-col .brand{font-size:20px;margin-bottom:8px}
.footer-grid .brand-col p{color:var(--muted);font-size:14px;max-width:300px;line-height:1.6}
.footer-grid .brand-col .socials{display:flex;gap:10px;margin-top:14px}
.footer-grid .brand-col .socials a{width:40px;height:40px;border-radius:50%;background:var(--surface);display:grid;place-items:center;color:var(--muted);transition:var(--transition);font-size:16px}
.footer-grid .brand-col .socials a:hover{background:var(--accent);color:#fff;transform:translateY(-2px)}
.footer-grid .col h5{font-weight:700;font-size:14px;margin-bottom:12px;color:var(--primary)}
.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:6px}
.footer-grid .col ul li a{color:var(--muted);font-size:14px;transition:var(--transition)}
.footer-grid .col ul li a:hover{color:var(--accent)}
.footer-bottom{text-align:center;padding-top:20px;border-top:1px solid rgba(26,26,46,.04);color:var(--muted-light);font-size:13px}

/* RESPONSIVE */
@media(max-width:1200px){.products-grid{grid-template-columns:repeat(3,1fr)}.categories-grid{grid-template-columns:repeat(3,1fr)}.footer-grid{grid-template-columns:1fr 1fr;gap:28px}}
@media(max-width:992px){.hero h1{font-size:36px}.hero{min-height:380px;margin:16px 16px 0;padding:40px 0}.deal-wrap{flex-direction:column}.deal-wrap .deal-img{flex:0 0 240px}.deal-wrap .deal-content{padding:28px 30px}.newsletter-wrap{padding:32px 28px;flex-direction:column;text-align:center}.newsletter-wrap form{max-width:100%}.search-wrap{min-width:150px}}
@media(max-width:768px){nav.main-nav{display:none}.mobile-toggle{display:grid;place-items:center}.products-grid{grid-template-columns:repeat(2,1fr);gap:14px}.categories-grid{grid-template-columns:repeat(2,1fr);gap:12px}.hero h1{font-size:28px}.hero p{font-size:15px}.section-header h2{font-size:22px}.deal-wrap .deal-content h3{font-size:22px}.deal-wrap .deal-content .price-big{font-size:26px}.timer-box{min-width:56px;padding:8px 12px}.timer-box .num{font-size:20px}.footer-grid{grid-template-columns:1fr;gap:20px}.header-inner{flex-wrap:nowrap}.brand{font-size:18px}.brand i{font-size:20px}.search-wrap{min-width:120px;padding:0 10px 0 14px}.search-wrap input{font-size:13px;padding:8px 0}.header-actions .icon-btn{width:36px;height:36px;font-size:15px}.cart-count{width:18px;height:18px;font-size:10px}.testimonial-card{flex:0 0 280px}.hero .actions .btn{padding:10px 20px;font-size:14px}.section{padding:36px 0}}
@media(max-width:480px){.products-grid{grid-template-columns:1fr 1fr;gap:10px}.categories-grid{grid-template-columns:1fr 1fr;gap:10px}.hero{margin:10px 10px 0;min-height:300px;padding:28px 0;border-radius:var(--radius-sm)}.hero h1{font-size:24px}.container{padding:0 14px}.deal-wrap .deal-content{padding:20px 18px}.deal-wrap .deal-img{flex:0 0 180px}.newsletter-wrap{padding:24px 18px}.newsletter-wrap .text h3{font-size:20px}.product-card .body{padding:12px 12px 8px}.product-card .body h5{font-size:13px}.product-card .body .price{font-size:15px}.product-card .footer{padding:0 12px 12px}.product-card .footer .add-btn{font-size:12px;padding:8px}.timer-box{min-width:46px;padding:6px 8px}.timer-box .num{font-size:16px}}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium <br>Essentials</h1>
      <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="cat-title">Browse Categories</h2><p>Find exactly what you're looking for</p></div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="prod-title">Trending Now</h2><p>What's hot — popular picks from our community</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="deals-title">⚡ Flash Deal</h2><p>Grab it before it's gone — limited stock</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy"></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="test-title">What Our Customers Say</h2><p>Real reviews from real people</p></div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text"><h3 id="news-title">Stay in the Loop</h3><p>Get exclusive offers, early access & new arrivals</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
