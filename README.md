Front-end Backbone Boilerplate
===

Introducing the Standards boilerplate w/ Backbone.js. This is a simple application setup to jump start your projects. 

## Dependencies

- [Bundler Gem Installer](http://gembundler.com/)
- [Node + NPM Package Manager](https://github.com/joyent/node/wiki/Installation)
- [Grunt](http://gruntjs.com/getting-started)
- [Bower](http://bower.io)

**Installing Grunt:**

Our boilerplate requires Grunt `>=0.4.0`. If you've never installed Grunt, or you have installed an earlier version, visit [Grunt's Getting Started Guide](http://gruntjs.com/getting-started) before proceeding.

**Installing Bower:**

Our boilerplate uses Bower for front-end package management. If you have never installed Bower, you can install it globally using npm:

`npm install -g bower`

## Installation

**Install gems:**  

`bundle install`

**Install node modules:**

`npm install`

**Install bower dependencies:**

`bower install`

**Run grunt tasks:**

`grunt`

## Deploys

Our boilerplate uses the [capistrano](https://github.com/capistrano/capistrano) deploy toolkit with the [multistage extension](https://github.com/capistrano/capistrano/wiki/2.x-Multistage-Extension) active. We recomend learning the in's and out's of capistrano. Github prodives some good reading on this [topic](https://help.github.com/articles/deploying-with-capistrano) also.

**Development*:** `cap deploy`  
**Staging/QA*:** `cap stg deploy`  
**Production*:** `cap prod deploy`  

*Each deploy requires enviorment setup by your administrator and the correct creditials for your deployment.

## License

[GNU General Public License Version 3](http://www.gnu.org/licenses/gpl.html)
