/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.Modal = function() {};

Egf.Modal.prototype = {
  init: function() {
    this.CloseModal();
  },

  closeModal: function() {
    $(document).on("click", ".delete", function() {
      $('article.message').hide();
    });
  },
};
