<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>FlixVault — Netflix Style</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    /* ----- RESET & BASE ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-primary: #0a0a0a;
      --bg-secondary: #1a1a1a;
      --bg-card: #1f1f1f;
      --text-primary: #ffffff;
      --text-muted: #b3b3b3;
      --accent-red: #e50914;
      --accent-red-hover: #f40612;
      --shadow: 0 8px 24px rgba(0, 0, 0, 0.6);
      --radius: 8px;
      --transition: 0.25s ease;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
      background: var(--bg-primary);
      color: var(--text-primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      display: block;
      max-width: 100%;
    }

    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 0 40px;
    }

    /* ----- HEADER (Netflix style) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: linear-gradient(180deg, rgba(0, 0, 0, 0.95) 60%, transparent);
      padding: 16px 0 12px;
      backdrop-filter: blur(6px);
      -webkit-backdrop-filter: blur(6px);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
    }

    .brand {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: var(--accent-red);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand i {
      font-size: 2rem;
    }

    nav.main-nav ul {
      display: flex;
      gap: 28px;
      list-style: none;
      font-weight: 500;
      font-size: 0.95rem;
    }
    nav.main-nav ul li a {
      transition: var(--transition);
      color: var(--text-muted);
    }
    nav.main-nav ul li a:hover {
      color: white;
    }
    nav.main-nav ul li a.active {
      color: white;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .header-actions .icon-btn {
      background: transparent;
      border: 0;
      color: var(--text-muted);
      font-size: 1.2rem;
      cursor: pointer;
      transition: var(--transition);
    }
    .header-actions .icon-btn:hover {
      color: white;
    }
    .avatar {
      width: 36px;
      height: 36px;
      border-radius: 4px;
      background: #333;
      display: grid;
      place-items: center;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .avatar:hover {
      opacity: 0.8;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      color: white;
      font-size: 1.6rem;
      cursor: pointer;
    }

    /* mobile nav */
    #mobileMenu {
      display: none;
      background: var(--bg-secondary);
      padding: 16px 0;
      border-top: 1px solid #2a2a2a;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }
    #mobileMenu ul li a {
      display: block;
      padding: 10px 16px;
      border-radius: var(--radius);
      font-weight: 500;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: #2a2a2a;
    }

    /* ----- HERO (featured) ----- */
    .hero {
      position: relative;
      min-height: 70vh;
      display: flex;
      align-items: center;
      padding: 60px 0 80px;
      background: linear-gradient(135deg, rgba(0, 0, 0, 0.7) 20%, rgba(0, 0, 0, 0.2)),
        url('https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      margin-bottom: 20px;
      border-bottom: 3px solid var(--accent-red);
    }
    .hero-content {
      max-width: 600px;
    }
    .hero-content .badge {
      display: inline-block;
      background: var(--accent-red);
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 0.8rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-bottom: 12px;
    }
    .hero-content h1 {
      font-size: clamp(2.2rem, 6vw, 4.2rem);
      font-weight: 700;
      line-height: 1.1;
      margin-bottom: 12px;
    }
    .hero-content p {
      font-size: 1.1rem;
      color: var(--text-muted);
      max-width: 460px;
      margin-bottom: 24px;
    }
    .hero-buttons {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 4px;
      font-weight: 600;
      font-size: 1rem;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-primary {
      background: var(--accent-red);
      color: white;
    }
    .btn-primary:hover {
      background: var(--accent-red-hover);
      transform: scale(1.02);
    }
    .btn-secondary {
      background: rgba(255, 255, 255, 0.15);
      color: white;
      backdrop-filter: blur(4px);
    }
    .btn-secondary:hover {
      background: rgba(255, 255, 255, 0.25);
    }

    /* ----- ROWS ----- */
    .section {
      padding: 28px 0;
    }
    .section-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 16px;
    }
    .section-header h2 {
      font-size: 1.5rem;
      font-weight: 600;
    }
    .section-header a {
      color: var(--text-muted);
      font-size: 0.9rem;
      transition: var(--transition);
    }
    .section-header a:hover {
      color: white;
    }

    .row-scroll {
      display: flex;
      gap: 16px;
      overflow-x: auto;
      padding: 8px 0 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
      scrollbar-width: thin;
      scrollbar-color: #333 transparent;
    }
    .row-scroll::-webkit-scrollbar {
      height: 6px;
    }
    .row-scroll::-webkit-scrollbar-track {
      background: transparent;
    }
    .row-scroll::-webkit-scrollbar-thumb {
      background: #333;
      border-radius: 8px;
    }

    .movie-card {
      flex: 0 0 200px;
      scroll-snap-align: start;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      transition: var(--transition);
      cursor: pointer;
      position: relative;
      border: 1px solid transparent;
    }
    .movie-card:hover {
      transform: scale(1.04);
      border-color: var(--accent-red);
      box-shadow: var(--shadow);
      z-index: 2;
    }
    .movie-card img {
      width: 100%;
      height: 280px;
      object-fit: cover;
      background: #1a1a1a;
    }
    .movie-card .card-body {
      padding: 12px 14px 14px;
    }
    .movie-card .card-body h4 {
      font-size: 0.95rem;
      font-weight: 600;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .movie-card .card-body .meta {
      display: flex;
      justify-content: space-between;
      font-size: 0.8rem;
      color: var(--text-muted);
      margin-top: 4px;
    }
    .movie-card .card-body .meta i {
      color: #f5c518;
    }
    .movie-card .card-body .badge-top {
      position: absolute;
      top: 10px;
      left: 10px;
      background: var(--accent-red);
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
    }

    /* larger card for "trending" */
    .movie-card.large {
      flex: 0 0 280px;
    }
    .movie-card.large img {
      height: 360px;
    }

    /* ----- footer ----- */
    footer {
      background: var(--bg-secondary);
      padding: 40px 0 24px;
      margin-top: 20px;
      border-top: 1px solid #2a2a2a;
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-inner .brand {
      font-size: 1.4rem;
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links ul {
      list-style: none;
      font-size: 0.9rem;
      color: var(--text-muted);
      line-height: 2;
    }
    .footer-links ul li a:hover {
      color: white;
    }
    .footer-bottom {
      text-align: center;
      color: var(--text-muted);
      font-size: 0.8rem;
      padding-top: 20px;
      margin-top: 20px;
      border-top: 1px solid #2a2a2a;
    }

    /* ----- responsive ----- */
    @media (max-width: 992px) {
      .container {
        padding: 0 24px;
      }
      .movie-card {
        flex: 0 0 160px;
      }
      .movie-card img {
        height: 220px;
      }
      .movie-card.large {
        flex: 0 0 220px;
      }
      .movie-card.large img {
        height: 280px;
      }
    }

    @media (max-width: 768px) {
      .mobile-toggle {
        display: inline-block;
      }
      nav.main-nav {
        display: none;
      }
      .header-actions .icon-btn:not(.avatar) {
        display: none;
      }
      .hero {
        min-height: 50vh;
        padding: 40px 0 60px;
      }
      .hero-content h1 {
        font-size: 2rem;
      }
      .movie-card {
        flex: 0 0 140px;
      }
      .movie-card img {
        height: 190px;
      }
      .movie-card.large {
        flex: 0 0 180px;
      }
      .movie-card.large img {
        height: 240px;
      }
      .footer-inner {
        flex-direction: column;
        align-items: center;
        text-align: center;
      }
      .footer-links {
        justify-content: center;
        gap: 24px;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 16px;
      }
      .movie-card {
        flex: 0 0 120px;
      }
      .movie-card img {
        height: 160px;
      }
      .movie-card.large {
        flex: 0 0 150px;
      }
      .movie-card.large img {
        height: 200px;
      }
      .hero-content h1 {
        font-size: 1.6rem;
      }
      .btn {
        padding: 10px 20px;
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:18px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#"><i class="fas fa-film"></i> FlixVault</a>
      </div>

      <nav class="main-nav">
        <ul>
          <li><a href="#" class="active">Home</a></li>
          <li><a href="#">TV Shows</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">New &amp; Popular</a></li>
          <li><a href="#">My List</a></li>
        </ul>
      </nav>

      <div class="header-actions">
        <button class="icon-btn" aria-label="Search"><i class="fas fa-search"></i></button>
        <button class="icon-btn" aria-label="Kids"><i class="fas fa-child"></i></button>
        <button class="icon-btn" aria-label="Notifications"><i class="far fa-bell"></i></button>
        <div class="avatar" aria-label="Profile">JD</div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">TV Shows</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">New &amp; Popular</a></li>
          <li><a href="#">My List</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero">
      <div class="container hero-content">
        <span class="badge">Trending Now</span>
        <h1>Dune: Part Two</h1>
        <p>Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family.</p>
        <div class="hero-buttons">
          <button class="btn btn-primary"><i class="fas fa-play"></i> Play</button>
          <button class="btn btn-secondary"><i class="fas fa-info-circle"></i> More Info</button>
        </div>
      </div>
    </section>

    <!-- ROW: Trending Now -->
    <section class="section container">
      <div class="section-header">
        <h2>🔥 Trending Now</h2>
        <a href="#">See all <i class="fas fa-chevron-right" style="font-size:12px;"></i></a>
      </div>
      <div class="row-scroll" id="trendingRow"></div>
    </section>

    <!-- ROW: Popular on FlixVault -->
    <section class="section container">
      <div class="section-header">
        <h2>⭐ Popular on FlixVault</h2>
        <a href="#">See all <i class="fas fa-chevron-right" style="font-size:12px;"></i></a>
      </div>
      <div class="row-scroll" id="popularRow"></div>
    </section>

    <!-- ROW: Top Rated (larger cards) -->
    <section class="section container">
      <div class="section-header">
        <h2>🏆 Top Rated</h2>
        <a href="#">See all <i class="fas fa-chevron-right" style="font-size:12px;"></i></a>
      </div>
      <div class="row-scroll" id="topRatedRow"></div>
    </section>

    <!-- ROW: Action & Adventure -->
    <section class="section container">
      <div class="section-header">
        <h2>⚔️ Action &amp; Adventure</h2>
        <a href="#">See all <i class="fas fa-chevron-right" style="font-size:12px;"></i></a>
      </div>
      <div class="row-scroll" id="actionRow"></div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-inner">
        <div>
          <div class="brand"><i class="fas fa-film"></i> FlixVault</div>
          <div style="color:var(--text-muted); font-size:0.9rem; margin-top:6px;">Stream the best movies &amp; shows.</div>
        </div>
        <div class="footer-links">
          <ul>
            <li><a href="#">Audio Description</a></li>
            <li><a href="#">Investor Relations</a></li>
            <li><a href="#">Legal Notices</a></li>
          </ul>
          <ul>
            <li><a href="#">Help Center</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Cookie Preferences</a></li>
          </ul>
          <ul>
            <li><a href="#">Gift Cards</a></li>
            <li><a href="#">Terms of Use</a></li>
            <li><a href="#">Corporate Info</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">© 2026 FlixVault. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ============================================================
    // DATA — Netflix-style movie catalog
    // ============================================================
    const MOVIES = [
      // Trending
      { id: 1, title: 'Dune: Part Two', year: '2024', rating: 8.7, genre: 'Sci-Fi', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'New' },
      { id: 2, title: 'The Batman', year: '2022', rating: 8.3, genre: 'Crime', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'Trending' },
      { id: 3, title: 'Avatar: Way of Water', year: '2022', rating: 8.0, genre: 'Adventure', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 4, title: 'John Wick 4', year: '2023', rating: 8.2, genre: 'Action', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 5, title: 'Oppenheimer', year: '2023', rating: 8.9, genre: 'Drama', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'Top' },
    ];

    const POPULAR = [
      { id: 6, title: 'The Crown', year: '2023', rating: 8.6, genre: 'Drama', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 7, title: 'Stranger Things', year: '2022', rating: 8.7, genre: 'Sci-Fi', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'Popular' },
      { id: 8, title: 'The Witcher', year: '2023', rating: 8.1, genre: 'Fantasy', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 9, title: 'Ted Lasso', year: '2023', rating: 8.9, genre: 'Comedy', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 10, title: 'The Last of Us', year: '2023', rating: 8.8, genre: 'Drama', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
    ];

    const TOP_RATED = [
      { id: 11, title: 'The Dark Knight', year: '2008', rating: 9.0, genre: 'Action', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'Classic' },
      { id: 12, title: 'Inception', year: '2010', rating: 8.8, genre: 'Sci-Fi', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 13, title: 'Interstellar', year: '2014', rating: 8.7, genre: 'Sci-Fi', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 14, title: 'Parasite', year: '2019', rating: 8.6, genre: 'Thriller', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
    ];

    const ACTION = [
      { id: 15, title: 'Mad Max: Fury Road', year: '2015', rating: 8.1, genre: 'Action', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 16, title: 'Die Hard', year: '1988', rating: 8.2, genre: 'Action', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80', badge: 'Classic' },
      { id: 17, title: 'The Matrix', year: '1999', rating: 8.7, genre: 'Action', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
      { id: 18, title: 'Gladiator', year: '2000', rating: 8.5, genre: 'Adventure', img: 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=400&q=80' },
    ];

    // ============================================================
    // RENDER HELPERS
    // ============================================================
    function renderMovies(containerId, movies, large = false) {
      const container = document.getElementById(containerId);
      if (!container) return;
      container.innerHTML = '';
      movies.forEach(m => {
        const card = document.createElement('div');
        card.className = `movie-card ${large ? 'large' : ''}`;
        card.innerHTML = `
          ${m.badge ? `<span class="badge-top">${m.badge}</span>` : ''}
          <img src="${m.img}" alt="${m.title}" loading="lazy" />
          <div class="card-body">
            <h4>${m.title}</h4>
            <div class="meta">
              <span>${m.year}</span>
              <span><i class="fas fa-star"></i> ${m.rating}</span>
            </div>
          </div>
        `;
        card.addEventListener('click', () => {
          alert(`🎬 "${m.title}" — ${m.genre} (${m.year})\nRating: ${m.rating}/10`);
        });
        container.appendChild(card);
      });
    }

    // ============================================================
    // MOBILE TOGGLE
    // ============================================================
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
    });

    // ============================================================
    // INIT
    // ============================================================
    renderMovies('trendingRow', MOVIES);
    renderMovies('popularRow', POPULAR);
    renderMovies('topRatedRow', TOP_RATED, true);
    renderMovies('actionRow', ACTION);
  </script>
</body>
</html>
