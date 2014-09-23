Mondo Robot Backbone Boilerplate
===

Mondo Robot's standard boilerplate for backbone.js apps

This is a simple application setup to jump start your projects.

## Overview

This boilerplate uses [Middleman](http://middlemanapp.com/) to generate a static site using a modern toolset that includes

* Zurb Foundation for responsive styling and css structure
* Icon Fonts for vector iconography
* Image Sprite generation
* Sass for CSS preprocessing
* CoffeeScript for JS preprocessing
* Slim for HTML preprocessing
* Asset digest / cache busting
* CSS and JS concatenation and minification
* I18n translations (server-side)
* Acceptance testing via RSpec + Capybara
* TODO: Unit testing via Karma + Jasmine

## Dependencies

* Ruby + RubyGems
  Reccommend using the [Postmodern Ruby Environment](http://yousefourabi.com/blog/2013/11/the-postmodern-ruby-environment/)) consisting of [ruby-install](https://github.com/postmodern/ruby-install) and [chruby](https://github.com/postmodern/chruby)
* NPM
* Bower
* PhantomJS for headless acceptance testing

## Installation

* Install gems

  ```shell
  bundle install
  ```

* Install node packages

  ```shell
  npm install
  ```

* Install bower packages

  ```shell
  bower install
  ```

* Start your development server
  ```shell
  middleman s
  ```

* Run your tests
  ```shell
  rspec spec/
  ```

* Build your app
  ```shell
  middleman
  ```

* TODO: Deploy your app

## Components

### Gems

* **middleman**

  [github](https://github.com/middleman/middleman) | [docs](http://middlemanapp.com/)

  * Watches and compiles preprocessed files on request during development
  * Builds static site for production deployment
  * Uses the (Sprockets)[https://github.com/sstephenson/sprockets] gem - the base for Rails asset pipeline

* **slim**

  [github](https://github.com/slim-template/slim) | [docs](http://slim-lang.com/)

  * HTML templating language with significant whitespace

* **sass**
  [github](https://github.com/sass/sass) | [docs](http://sass-lang.com/documentation/file.SASS_REFERENCE.html)

  * CSS preprocessor language with significant whitespace

* **coffeescript**

  [github](https://github.com/jashkenas/coffeescript) | [docs](http://coffeescript.org/)

  * JS preprocessor language with significant whitespace

* **faker**

  [github](https://github.com/stympy/faker) [docs](http://rubydoc.info/github/stympy/faker/master/frames)

  * Generates example data for design and testing

* **awesome_print**

  [github](https://github.com/michaeldv/awesome_print)

  Pretty printing for Ruby console/log

* **middleman-pry**

  [github](https://github.com/AndrewKvalheim/middleman-pry)

  * Adds pry to the middleman console for debugging / REPL driven dev.
  * More on pry](http://pryrepl.org/)

* **rspec**

  [rspec](https://github.com/rspec/rspec)

  Ruby testing framework

* **capybara**

  [github](https://github.com/jnicklas/capybara)

  Automated acceptance testing abstraction for Rack::Test

* **poltergeist**

  [github](https://github.com/teampoltergeist/poltergeist)

  Capybara driver for headless webkit acceptance testing via PhantomJS

### NPM Packages

**TODO: These should run in the `after_build` hook within `config.rb`**

* coffee-jshint

  [github](https://github.com/Clever/coffee-jshint)

* complexity-report

  [github](https://github.com/philbooth/complexity-report)

* csscomb

  [github](https://github.com/csscomb/csscomb.js) | [docs](http://csscomb.com/)

### Bower Packages

* **foundation**

  [github](https://github.com/zurb/foundation) | [docs](http://foundation.zurb.com/docs/)

* **underscore**

  [github](https://github.com/jashkenas/underscore) | [docs](http://underscorejs.org/)

* **backbone**

  [github](https://github.com/jashkenas/backbone) | [docs](http://backbonejs.org/)

* **requirejs**

  [github](https://github.com/jrburke/requirejs) | [docs](http://requirejs.org/)

* **requirejs-text**

  [github](https://github.com/requirejs/text)

* **swig**

  [github](https://github.com/paularmstrong/swig/) | [docs](http://paularmstrong.github.io/swig/)

* **lumberjack**

  [github](https://github.com/jbail/lumberjack)
