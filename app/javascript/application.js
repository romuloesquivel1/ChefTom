// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@popperjs/core'
import 'bootstrap'
import '@hotwired/turbo-rails'
import 'controllers'

window.document_ready = function (fn) {
  if (document.readyState !== 'loading') {
    fn();
    return;
  }
  document.addEventListener('DOMContentLoaded', fn);
}
