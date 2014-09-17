Mondo Robot Backbone Boilerplate
===

Mondo Robot's standard boilerplate for backbone.js apps. This is a simple application setup to jump start your projects.

## Dependencies

- [Bundler Gem Installer](http://gembundler.com/)
- [Node + NPM Package Manager](https://github.com/joyent/node/wiki/Installation)
- [Grunt](http://gruntjs.com/getting-started)
- [Bower](http://bower.io)

**Installing Grunt:**

Our boilerplate requires Grunt `>=0.4.0`. If you've never installed Grunt, or you have installed an earlier version, visit [Grunt's Getting Started Guide](http://gruntjs.com/getting-started) before proceeding.

**Installing Bower:**

Our boilerplate uses Bower for front-end package management. If you have never installed Bower, you can install it globally using npm:

```shell
npm install -g bower
```

## Installation

**Install gems:**  

```shell
bundle install
```

**Install node modules:**

```shell
npm install
```

**Install bower packages:**

```shell
bower install
```

## Components

### Gems

* [compass](https://github.com/Compass/compass)

  Library of Sass components and mixins. Processes .sass and .scss files into .css
  Setup in `build/config/watch.js` to run with

  ```shell
  grunt watch
  ```

* [sass](https://github.com/sass/sass)

  CSS Preprocessor

### NPM Packages

* [underscore](https://github.com/jashkenas/underscore)

  JS Utility library

* [grunt](https://github.com/gruntjs/grunt)

  JS Task runner

  List available tasks with

  ```shell
  grunt --help
  ```

* [grunt-complexity](https://github.com/vigetlabs/grunt-complexity)

  Analyzes your JS code for complexity

  ```shell
  mkdir docs #if it does not already exist
  grunt complexity
  ```

* [grunt-jsbeautifier](https://github.com/vkadam/grunt-jsbeautifier)

  Reformats, reindents, unpacks, and unobfuscates JS

  ```shell
  grunt jsbeautifier
  ```

* [grunt-contrib-cssmin](https://github.com/gruntjs/grunt-contrib-cssmin)

  Minifies and concatenates CSS

  ```shell
  grunt cssmin
  ```

* [grunt-contrib-compass](https://github.com/gruntjs/grunt-contrib-compass)

  Compass + Grunt integration

* [grunt-contrib-requirejs](https://github.com/gruntjs/grunt-contrib-requirejs)

  RequireJS integration with Grunt

* [grunt-contrib-watch](https://github.com/gruntjs/grunt-contrib-watch)

  Adds the `watch` task to Grunt

* [grunt-contrib-jshint](https://github.com/gruntjs/grunt-contrib-jshint)

  JS validation

  ```shell
  grunt jshint
  ```

* [grunt-prettysass](https://github.com/brandonminch/grunt-prettysass)

  Prettifies and alphabetizes your SASS

  ```shell
  grunt prettysass
  ```

### Bower Packages

* [jquery](https://github.com/jquery/jquery)

  Everyone's favorite DOM manipulation and JS utility library

* [requirejs](https://github.com/jrburke/requirejs/)

  Handles dependencies and loading in your JS app

* [requirejs-text](https://github.com/requirejs/text)

  Load HTML/XML/SVG text files with RequireJS

* [backbone-amd](https://github.com/amdjs/underscore)

  AMD fork of backbone for loading with RequireJS

* [underscore-amd](https://github.com/amdjs/underscore)

  AMD fork of underscore for loading with RequireJS

* [modernizr](https://github.com/Modernizr/Modernizr)

  Adds HTML5 support for legacy browsers
