/**
 * @module collections/ExampleCollection
 */

define(['jquery', 'underscore', 'backbone', 'models/example'],
  function($, _, Backbone, ExampleModel) {

    'use strict';

    var ExampleCollection = Backbone.Collection.extend({

      'model': ExampleModel,

      'initialize': function() {

        Lumberjack('ExampleCollection : Initialized');
      }

    });

    return ExampleCollection;
  }
);
