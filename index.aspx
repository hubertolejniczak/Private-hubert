<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Gildia Produktowa</title>
  <style>
    :root {
      --bg: #0e0e13;
      --surface: #16161f;
      --border: #2a2a3a;
      --accent: #7c5cfc;
      --accent-light: #a688ff;
      --text: #e8e8f0;
      --muted: #6e6e8a;
      --danger: #ff6b6b;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      background: var(--bg);
      color: var(--text);
      font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
      min-height: 100vh;
      overflow-x: hidden;
    }

    /* ── NAV ── */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.25rem 2.5rem;
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      background: rgba(14,14,19,0.85);
      backdrop-filter: blur(12px);
      z-index: 10;
    }

    .nav-logo {
      font-size: 1rem;
      font-weight: 700;
      letter-spacing: 0.08em;
      color: var(--accent-light);
      text-transform: uppercase;
    }

    .nav-badge {
      font-size: 0.75rem;
      color: var(--muted);
      border: 1px solid var(--border);
      border-radius: 999px;
      padding: 0.25rem 0.75rem;
    }

    /* ── HERO ── */
    .hero {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      padding: 6rem 2rem 4rem;
      position: relative;
    }

    .hero-tag {
      display: inline-block;
      background: rgba(124,92,252,0.15);
      color: var(--accent-light);
      font-size: 0.75rem;
      font-weight: 600;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      border: 1px solid rgba(124,92,252,0.4);
      border-radius: 999px;
      padding: 0.35rem 1rem;
      margin-bottom: 2rem;
    }

    .hero h1 {
      font-size: clamp(2.5rem, 6vw, 4.5rem);
      font-weight: 800;
      line-height: 1.1;
      letter-spacing: -0.02em;
      margin-bottom: 1.5rem;
      background: linear-gradient(135deg, #fff 30%, var(--accent-light));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero p {
      font-size: 1.15rem;
      color: var(--muted);
      max-width: 520px;
      line-height: 1.7;
      margin-bottom: 3rem;
    }

    .cta-group {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
      justify-content: center;
    }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 0.85rem 2rem;
      font-size: 0.95rem;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.2s, transform 0.15s;
    }

    .btn-primary:hover {
      background: var(--accent-light);
      transform: translateY(-1px);
    }

    .btn-secondary {
      background: transparent;
      color: var(--text);
      border: 1px solid var(--border);
      border-radius: 10px;
      padding: 0.85rem 2rem;
      font-size: 0.95rem;
      font-weight: 500;
      cursor: pointer;
      transition: border-color 0.2s, transform 0.15s;
    }

    .btn-secondary:hover {
      border-color: var(--accent);
      transform: translateY(-1px);
    }

    /* ── CARDS ── */
    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 1.25rem;
      padding: 2rem 2.5rem 5rem;
      max-width: 1100px;
      margin: 0 auto;
    }

    .card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 1.75rem;
      transition: border-color 0.2s, transform 0.2s;
    }

    .card:hover {
      border-color: var(--accent);
      transform: translateY(-3px);
    }

    .card-icon {
      font-size: 1.75rem;
      margin-bottom: 1rem;
    }

    .card h3 {
      font-size: 1.05rem;
      font-weight: 700;
      margin-bottom: 0.5rem;
    }

    .card p {
      font-size: 0.875rem;
      color: var(--muted);
      line-height: 1.6;
    }

    /* ── DIVIDER ── */
    .divider {
      height: 1px;
      background: var(--border);
      max-width: 1100px;
      margin: 0 auto 4rem;
    }

    /* ── SCHEDULE ── */
    .schedule {
      max-width: 700px;
      margin: 0 auto 5rem;
      padding: 0 2rem;
    }

    .schedule h2 {
      font-size: 1.5rem;
      font-weight: 700;
      margin-bottom: 1.5rem;
      text-align: center;
    }

    .schedule-item {
      display: flex;
      gap: 1.5rem;
      align-items: flex-start;
      padding: 1.25rem 0;
      border-bottom: 1px solid var(--border);
    }

    .schedule-item:last-child {
      border-bottom: none;
    }

    .schedule-time {
      font-size: 0.8rem;
      color: var(--accent-light);
      font-weight: 600;
      white-space: nowrap;
      min-width: 60px;
      padding-top: 2px;
    }

    .schedule-title {
      font-weight: 600;
      font-size: 0.95rem;
      margin-bottom: 0.25rem;
    }

    .schedule-desc {
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* ── FOOTER ── */
    footer {
      border-top: 1px solid var(--border);
      padding: 2rem 2.5rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
    }

    footer span {
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* ── EASTER EGG: FOLDER ── */
    .secret-folder {
      position: fixed;
      bottom: 2rem;
      right: 2rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 0.35rem;
      cursor: pointer;
      z-index: 100;
      user-select: none;
    }

    .folder-icon {
      font-size: 2.4rem;
      filter: grayscale(0.4) brightness(0.75);
      transition: filter 0.2s, transform 0.2s;
    }

    .secret-folder:hover .folder-icon {
      filter: grayscale(0) brightness(1);
      transform: scale(1.1);
    }

    .folder-label {
      font-size: 0.65rem;
      color: var(--muted);
      text-align: center;
      max-width: 90px;
      line-height: 1.3;
      transition: color 0.2s;
    }

    .secret-folder:hover .folder-label {
      color: var(--danger);
    }

    /* ── MODAL ── */
    .modal-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.7);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 999;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s;
    }

    .modal-overlay.visible {
      opacity: 1;
      pointer-events: all;
    }

    .modal {
      background: var(--surface);
      border: 1px solid var(--accent);
      border-radius: 18px;
      padding: 2.5rem;
      max-width: 440px;
      width: 90%;
      text-align: center;
      transform: scale(0.9) translateY(20px);
      transition: transform 0.3s;
      box-shadow: 0 0 60px rgba(124,92,252,0.25);
    }

    .modal-overlay.visible .modal {
      transform: scale(1) translateY(0);
    }

    .modal-emoji {
      font-size: 3rem;
      margin-bottom: 1rem;
    }

    .modal h2 {
      font-size: 1.3rem;
      font-weight: 700;
      margin-bottom: 0.75rem;
    }

    .modal p {
      font-size: 0.875rem;
      color: var(--muted);
      line-height: 1.6;
      margin-bottom: 2rem;
    }

    .modal-link {
      display: inline-block;
      background: var(--accent);
      color: #fff;
      text-decoration: none;
      border-radius: 10px;
      padding: 0.85rem 2rem;
      font-weight: 600;
      font-size: 0.9rem;
      transition: background 0.2s;
      margin-bottom: 1rem;
    }

    .modal-link:hover {
      background: var(--accent-light);
    }

    .modal-close {
      display: block;
      margin-top: 0.75rem;
      background: none;
      border: none;
      color: var(--muted);
      font-size: 0.8rem;
      cursor: pointer;
      transition: color 0.2s;
    }

    .modal-close:hover {
      color: var(--text);
    }

    /* ── GLOW BG ── */
    .glow {
      position: fixed;
      top: -200px;
      left: 50%;
      transform: translateX(-50%);
      width: 800px;
      height: 600px;
      background: radial-gradient(ellipse, rgba(124,92,252,0.12) 0%, transparent 70%);
      pointer-events: none;
      z-index: 0;
    }

    main { position: relative; z-index: 1; }

    /* ── TICKER ── */
    .ticker {
      background: var(--accent);
      color: #fff;
      font-size: 0.72rem;
      font-weight: 600;
      letter-spacing: 0.04em;
      overflow: hidden;
      white-space: nowrap;
      padding: 0.45rem 0;
      position: relative;
      z-index: 20;
    }

    .ticker-inner {
      display: inline-block;
      animation: ticker-scroll 28s linear infinite;
    }

    @keyframes ticker-scroll {
      from { transform: translateX(100vw); }
      to   { transform: translateX(-100%); }
    }

    /* ── FUN ANIMATIONS ── */
    @keyframes wiggle {
      0%, 100% { transform: rotate(0deg) scale(1); }
      20%       { transform: rotate(-8deg) scale(1.1); }
      40%       { transform: rotate(8deg) scale(1.1); }
      60%       { transform: rotate(-5deg) scale(1.05); }
      80%       { transform: rotate(5deg) scale(1.05); }
    }

    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50%       { transform: translateY(-6px); }
    }

    .hero-tag {
      animation: float 3s ease-in-out infinite;
    }

    .secret-folder:hover .folder-icon {
      filter: grayscale(0) brightness(1);
      animation: wiggle 0.6s ease;
    }

    .card:hover .card-icon {
      display: inline-block;
      animation: wiggle 0.5s ease;
    }
  </style>
</head>
<body>

<div class="glow"></div>

<div class="ticker">
  <span class="ticker-inner">
    &nbsp;&nbsp;&nbsp; 🚨 Uwaga: to jest spotkanie, na które warto przyjść &nbsp;·&nbsp; 🧠 Zero slajdów "let's align on..." &nbsp;·&nbsp; 📦 Artefakty, które nie wylądują od razu w archiwum &nbsp;·&nbsp; ⚡ Bez "masz wyciszony mikrofon" x4 &nbsp;·&nbsp; ☕ Kawa we własnym zakresie, sorry &nbsp;·&nbsp; 🚨 Uwaga: to jest spotkanie, na które warto przyjść &nbsp;·&nbsp; 🧠 Zero slajdów "let's align on..." &nbsp;·&nbsp; 📦 Artefakty, które nie wylądują od razu w archiwum &nbsp;·&nbsp; ⚡ Bez "masz wyciszony mikrofon" x4 &nbsp;&nbsp;&nbsp;
  </span>
</div>

<nav>
  <span class="nav-logo">⚗️ Gildia Produktowa</span>
  <span class="nav-badge">v2.0 · teraz z ludźmi</span>
</nav>

<main>
  <section class="hero">
    <div class="hero-tag">� Nie, to nie jest kolejny webinar</div>
    <h1>Spotkania produktowe,<br />na które warto przyjść</h1>
    <p>Zbieramy się raz na sprint, żeby rozmawiać o produkcie. Bez 47 slajdów o synergii, bez "przejdźmy do pytań" po 3 minutach i bez follow-up maila, który i tak nikt nie czyta.</p>
    <div class="cta-group">
      <button class="btn-primary" onclick="document.querySelector('.schedule').scrollIntoView({behavior:'smooth'})">Pokaż mi agendę</button>
      <button class="btn-secondary">OK, przekonałeś mnie</button>
    </div>
  </section>

  <section class="cards">
    <div class="card">
      <div class="card-icon">🧠</div>
      <h3>Wiedza w praktyce</h3>
      <p>Dzielimy się tym, czego nauczyliśmy się w boju — łącznie z rzeczami, które kompletnie nie wyszły. Bo z tych uczymy się najbardziej. Serio.</p>
    </div>
    <div class="card">
      <div class="card-icon">🔁</div>
      <h3>Discovery i delivery</h3>
      <p>Rozmawiamy o tym jak budować, nie o tym kto zaakceptował ticketa. Procesy, frameworki i retrospektywy — bez zbędnej biurokracji.</p>
    </div>
    <div class="card">
      <div class="card-icon">🤝</div>
      <h3>Społeczność</h3>
      <p>Raz na sprint. Bez obowiązku. Bez prezentacji robionych o 23:58 dnia poprzedniego. Tylko rozmowa z ludźmi, którym naprawdę zależy.</p>
    </div>
    <div class="card">
      <div class="card-icon">📦</div>
      <h3>Artefakty do zabrania</h3>
      <p>Szablony, prompty i checklisty — każde spotkanie zostawia coś, co możesz wdrożyć następnego dnia. Albo przynajmniej pokazać na standup.</p>
    </div>
  </section>

  <div class="divider"></div>

  <section class="schedule">
    <h2>Agenda najbliższego spotkania</h2>
    <div class="schedule-item">
      <span class="schedule-time">17:00</span>
      <div>
        <div class="schedule-title">Wejście, kawa, "słyszycie mnie?" x2</div>
        <div class="schedule-desc">Znamy to. Robimy to szybko i przechodzimy dalej.</div>
      </div>
    </div>
    <div class="schedule-item">
      <span class="schedule-time">17:15</span>
      <div>
        <div class="schedule-title">Lightning talk: Discovery w praktyce</div>
        <div class="schedule-desc">Jak skróciliśmy czas od pomysłu do walidacji — bez magii, tylko kilka konkretnych zmian.</div>
      </div>
    </div>
    <div class="schedule-item">
      <span class="schedule-time">17:35</span>
      <div>
        <div class="schedule-title">Terapia grupowa (edycja produktowa)</div>
        <div class="schedule-desc">Co najbardziej boli w waszych procesach? Tu jest bezpiecznie. Serio.</div>
      </div>
    </div>
    <div class="schedule-item">
      <span class="schedule-time">17:55</span>
      <div>
        <div class="schedule-title">Wnioski i co dalej (bez bullshitu)</div>
        <div class="schedule-desc">Konkretne next steps + kto prowadzi kolejne. I tak, zapisujemy to w Miro od razu.</div>
      </div>
    </div>
  </section>
</main>

<footer>
  <span>⚗️ Gildia Produktowa · 2026</span>
  <span>Made with curiosity (i zbyt dużą ilością kaw ☕)</span>
</footer>

<!-- EASTER EGG: folder -->
<div class="secret-folder" id="secretFolder" title="nie wchodzić">
  <div class="folder-icon">📁</div>
  <div class="folder-label">nie wchodzić<br />tajne</div>
</div>

<!-- MODAL -->
<div class="modal-overlay" id="modalOverlay">
  <div class="modal">
    <div class="modal-emoji">🔓</div>
    <h2>Hej, jesteś jedną z nas.</h2>
    <p>Kliknąłeś tajny folder. W normalnym świecie byłoby to podejrzane.<br />U nas — to właśnie tak wygląda onboarding.<br /><br />Wskocz do gildii i daj znać, co chcesz z niej wyciągnąć.</p>
    <a class="modal-link" href="https://miro.com/app/board/uXjVGiSle4U=/" target="_blank" rel="noopener">Dołączam, czemu nie →</a>
    <button class="modal-close" id="modalClose">okay, udaję że tu nie byłem</button>
  </div>
</div>

<script>
  const folder = document.getElementById('secretFolder');
  const overlay = document.getElementById('modalOverlay');
  const closeBtn = document.getElementById('modalClose');

  folder.addEventListener('click', () => {
    overlay.classList.add('visible');
  });

  closeBtn.addEventListener('click', () => {
    overlay.classList.remove('visible');
  });

  overlay.addEventListener('click', (e) => {
    if (e.target === overlay) {
      overlay.classList.remove('visible');
    }
  });

  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') overlay.classList.remove('visible');
  });
</script>

</body>
</html>
