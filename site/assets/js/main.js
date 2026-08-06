/* Miomir Labs — shared scripts */

(function () {
  'use strict';

  // Update any elements that display the current time
  function updateTime() {
    const timeEls = document.querySelectorAll('[data-status-time]');
    timeEls.forEach((el) => {
      const now = new Date();
      const timeString = now.toLocaleTimeString('en-US', {
        hour12: false,
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit'
      }) + ' ' + now.toLocaleTimeString('en-us', { timeZoneName: 'short' }).split(' ')[2];
      el.textContent = timeString;
    });
  }

  document.addEventListener('DOMContentLoaded', () => {
    updateTime();
    setInterval(updateTime, 1000);
  });
})();
