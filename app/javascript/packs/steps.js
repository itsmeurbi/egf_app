/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.StepTabs = function() {};

Egf.StepTabs.prototype = {
  init: function() {
    let tabsContainers = document.querySelectorAll(".steps__container");
    let _this = this;
    tabsContainers.forEach(function(tabsContainer) {
      _this.initTabs(tabsContainer);
    });
  },

  initTabs: function(tabsContainer) {
    let tabs = tabsContainer.querySelectorAll(".steps .steps__item");
    let tabsContent = tabsContainer.querySelectorAll(".step__content");

    let deactvateAllTabs = function () {
      tabs.forEach(function (tab) {
        let tabMarker = tab.children.item("steps__marker");
        tabMarker.classList.remove("steps__marker--active");
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
        let tabMarker = tab.children.item("steps__marker");
        tabMarker.classList.add("steps__marker--active");
        activateTabsContent(tab);
      });
    });

    tabs[0].click();
  },
};
