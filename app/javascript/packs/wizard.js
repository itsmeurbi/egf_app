/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.Wizard = function() {};

Egf.Wizard.prototype = {
  init: function() {
    this.EnableWizardButton();
  },

  enableWizardButton: function() {
    $(document).on("click", ".button--next", function() {
      var stepId = document.querySelector('.wizard__step.step-item.is-active').dataset.stepId;

      if (stepId == 2) {
        document.querySelector('.button--next').classList.add('hidden');
        document.querySelector('.button--done').classList.remove('hidden');
      }
    });
  },
};
