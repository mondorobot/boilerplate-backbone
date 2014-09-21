/**
 * @module app
 */

define(['jquery'], function($) {
  'use strict';

  // Bootstrap app settings defined in the DOM.
  var json = $('#app-settings')[0].innerHTML,
    settings = (json) ? $.parseJSON($('#app-settings')[0].innerHTML) : {};

  return settings;
});
