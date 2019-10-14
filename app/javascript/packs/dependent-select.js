/*jshint esversion: 6 */
'use strict';

window.Egf = window.Egf || {};
Egf.DependentSelect = function() {};

Egf.DependentSelect.prototype = {
  init: function() {
    this.DependentSelect();
  },

  dependentSelect: function() {
    var categoryId = document.getElementById('category_id').value;
    var trackId = document.getElementById('track_id').value;
    hideOptions(categoryId, trackId, '#track_id > option', 'category_id');
    hideOptions(categoryId, trackId, '#goal_milestone_id > option', 'track_id');

    $('#category_id, #track_id').change(function() {
      var onChangeId = this.id;
      var categoryId = document.getElementById('category_id').value;
      var trackId = document.getElementById('track_id').value;
      var target = (onChangeId == 'category_id') ? '#track_id > option' : '#goal_milestone_id > option';
      hideOptions(categoryId, trackId, target, onChangeId);
    });

    function hideOptions(categoryId, trackId, target, onChangeId) {
      var options = document.querySelectorAll(target)ß

      for (var i = 0; i < options.length; i++) {
        options[i].style.display = 'none';

        if(onChangeId == 'category_id' && options[i].dataset.categoryId == categoryId) {
          options[i].style.display = 'block';
        } else if (onChangeId == 'track_id' && options[i].dataset.categoryId == categoryId && options[i].dataset.trackId == trackId) {
          options[i].style.display = "block";
        }
      }
    }
  },
};
