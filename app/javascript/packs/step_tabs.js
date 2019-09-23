/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.BulmaStepTabs = function() {};

Egf.BulmaStepTabs.prototype = {
  init: function() {
    this.initTabs();
  },

  initTabs: function() {
    let tabs = document.querySelectorAll(".step_tabs .step_tabs__item");
    let tabsContent = document.querySelectorAll(".step_tab__content");

    let deactvateAllTabs = function () {
      tabs.forEach(function (tab) {
        let tabMarker = tab.children.item("step_tabs__marker");
        tabMarker.classList.remove("step_tabs__marker--active");
      });
    };

    let hideTabsContent = function () {
      tabsContent.forEach(function (tabContent) {
        tabContent.classList.remove("is-active");
      });
    };

    let activateTabsContent = function (tab) {
      tabsContent[getIndex(tab)].classList.add("is-active");
    };

    let getIndex = function (el) {
      return [...el.parentElement.children].indexOf(el);
    };

    tabs.forEach(function (tab) {
      tab.addEventListener("click", function () {
        deactvateAllTabs();
        hideTabsContent();
        let tabMarker = tab.children.item("step_tabs__marker");
        tabMarker.classList.add("step_tabs__marker--active");
        activateTabsContent(tab);
      });
    });

    tabs[0].click();
  },
};
