/*jshint esversion: 6 */
"use strict";

window.Egf = window.Egf || {};
Egf.BulmaTabs = function() {};

Egf.BulmaTabs.prototype = {
    init: function() {
        this.initTabs();
    },

    initTabs: function() {
        let tabs = document.querySelectorAll(".tabs li");
        let tabsContent = document.querySelectorAll(".tab__content");

        let deactvateAllTabs = function () {
          tabs.forEach(function (tab) {
            tab.classList.remove("is-active");
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

        let resetStepTabs = function(tab) {
          let tabContent = tabsContent[getIndex(tab)]
          let tabsContainer = tabContent.querySelector(".steps__container");
          new Egf.StepTabs().initTabs(tabsContainer);
        };

        tabs.forEach(function (tab) {
          tab.addEventListener("click", function () {
            deactvateAllTabs();
            hideTabsContent();
            tab.classList.add("is-active");
            activateTabsContent(tab);
            resetStepTabs(tab);
          });
        })

        tabs[0].click();
    },
};
