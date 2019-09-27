/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.KeyResults = function() {};

Egf.KeyResults.prototype = {
  init: function() {
    this.DynamicForm();
  },

  dynamicForm: function() {
    $(document).on("click", ".add-key-result", function(e) {
      e.preventDefault();
      appendElement();
    });

    $(document).on("click", ".button--done", function(e) {
      appendElement();
    });

    function appendElement() {
      var keyResult = document.getElementsByClassName('textarea-key-result')[0];
      var index = document.getElementById('key_result_index');

      if (keyResult.value) {
        var id = `goal_objective_attributes_key_results_attributes_${index.value}_description`;
        var name = `goal[objective_attributes][key_results_attributes][${index.value}][description]`;
        $('.dynamic__container').append(`<div class='task'> \
                                           <div class='circle--not-check'> \
                                             <div class="circle"></div> \
                                           </div> \
                                           <input id='${id}' name='${name}' value='${keyResult.value}'> \
                                         </div>`);
        index.value = parseInt(index.value) + 1;
        keyResult.value = ''
      }
    }
  },
};
