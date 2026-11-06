(function () {
  var btn = document.getElementById('menuBtn');
  var nav = document.getElementById('mobileNav');

  function setMenu(open) {
    nav.classList.toggle('hidden', !open);
    nav.classList.toggle('flex', open);
    btn.setAttribute('aria-expanded', String(open));
    btn.setAttribute('aria-label', open ? 'Close menu' : 'Open menu');
  }

  btn.addEventListener('click', function () {
    setMenu(nav.classList.contains('hidden'));
  });

  document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape' && !nav.classList.contains('hidden')) {
      setMenu(false);
      btn.focus();
    }
  });

  document.querySelectorAll('.mobile-nav-link').forEach(function (link) {
    link.addEventListener('click', function () {
      setMenu(false);
    });
  });

  var form = document.getElementById('contactForm');
  var fallback = document.getElementById('formFallback');
  var status = document.getElementById('formStatus');

  // The email block is the default so that a reader without JavaScript,
  // and a crawler, both get a contact route that works. The form appears
  // only once a real Formspree endpoint replaces the placeholder.
  if (form.getAttribute('action').indexOf('YOUR_FORM_ID') !== -1) {
    return;
  }
  fallback.classList.add('hidden');
  form.classList.remove('hidden');
  form.classList.add('flex');

  form.addEventListener('submit', function (event) {
    event.preventDefault();
    var button = form.querySelector('button[type="submit"]');
    button.disabled = true;
    status.classList.remove('hidden');
    status.textContent = 'Sending...';

    fetch(form.action, {
      method: 'POST',
      body: new FormData(form),
      headers: { Accept: 'application/json' }
    }).then(function (response) {
      if (response.ok) {
        form.reset();
        status.textContent = 'Thank you. Your message reached us.';
      } else {
        status.textContent = 'That did not send. Email build@miomirlabs.com instead.';
      }
    }).catch(function () {
      status.textContent = 'That did not send. Email build@miomirlabs.com instead.';
    }).finally(function () {
      button.disabled = false;
    });
  });
})();
