// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require('jquery');
require('bulma-accordion');
require('bulma-steps');

require('packs/nested-accordion');
require("packs/tabs");
require("packs/steps");
require("packs/dependent-select");
require("packs/wizard");
require("packs/modal");

import bulmaAccordion from 'bulma-accordion';
window.Egf = window.Egf || {};
Egf.bulmaAccordion = bulmaAccordion;

import bulmaSteps from 'bulma-steps';
window.Egf = window.Egf || {};
Egf.bulmaSteps = bulmaSteps;
