(() => {
  const root = document.documentElement;
  const savedTheme = localStorage.getItem('fund-theme');
  if (savedTheme) root.dataset.theme = savedTheme;

  const toggle = document.querySelector('.theme-toggle');
  if (toggle) {
    toggle.addEventListener('click', () => {
      const nextTheme = root.dataset.theme === 'dark' ? 'light' : 'dark';
      root.dataset.theme = nextTheme;
      localStorage.setItem('fund-theme', nextTheme);
    });
  }

  const current = window.location.hash;
  if (current) {
    const target = document.querySelector(current);
    if (target) target.setAttribute('tabindex', '-1');
  }
})();
