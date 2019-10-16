/*jshint esversion: 6 */
'use strict';

window.Egf = window.Egf || {};
Egf.NestedAccordion = function() {};

Egf.NestedAccordion.prototype = {
  init: function() {
    this.NestedAccordion();
  },

  nestedAccordion: function() {
    $(document).on('click', '.accordion--objective', function() {
      $(this).toggleClass('is-active')
    });
  },
};
