/**
 * @module app
 */

define(['jquery', 'lumberjack'], function($) {
  'use strict';

  window.log = Lumberjack();

  // Bootstrap app settings defined in the DOM.
  var json = $('#app-settings')[0].innerHTML,
    settings = (json) ? $.parseJSON($('#app-settings')[0].innerHTML) : {};

  return settings;
});
