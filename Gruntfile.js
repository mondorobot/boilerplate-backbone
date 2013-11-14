/**
 * @module Build
 * @class Build.Config
 * @static
 */

module.exports = function(grunt) {

	var config = {};

	config.root = 'www';
	config.stylesheets = config.root + '/stylesheets';
	config.javascripts = config.root + '/javascripts';
	config.jsbin = config.javascripts + '/generated';
	config.cssbin = config.stylesheets + '/generated';
	config.images = config.root + '/images';
	config.docsbin = 'docs';

	// Project configuration.
	grunt.initConfig({

		'jsbeautifier': {
			'files': [ config.javascripts + '/app/**/*.js' ],
			'options': {
				'indent_size': 1,
				'indent_char': '\t',
			}
		},

		'compass': require('./build/config/compass.js')(config),

		'cssmin': require('./build/config/cssmin.js')(config),

		'qunit': require('./build/config/qunit.js')(config),

		'yuidoc': require('./build/config/yuidoc.js')(config),

		'requirejs': require('./build/config/requirejs.js')(config),

		'jshint': require('./build/config/jshint.js')(config),

		'watch': require('./build/config/watch.js')(config),

		'prettysass': require('./build/config/prettysass.js')(config)

	});

	// Default task.
	grunt.registerTask('default', ['compass:app', 'cssmin', 'requirejs']);
	grunt.registerTask('docs', 'yuidoc');
	grunt.registerTask('pretty-js', 'jsbeautifier');

	// load grunt plugins
	grunt.loadNpmTasks('grunt-jsbeautifier');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-requirejs');
	grunt.loadNpmTasks('grunt-contrib-yuidoc');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	grunt.loadNpmTasks('grunt-contrib-qunit');
	grunt.loadNpmTasks('grunt-prettysass');

};
