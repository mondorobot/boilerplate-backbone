require 'rake/file_list'
require 'pathname'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :bower_components, File.join(root, 'bower_components')

configure :build do
  activate :minify_javascript
  activate :minify_css
  activate :asset_hash
end

after_configuration do
  sprockets.append_path bower_components

  sprockets.import_asset 'modernizr/modernizr.js'
  sprockets.import_asset 'jquery/dist/jquery.js'
  sprockets.import_asset 'requirejs/require.js'
  sprockets.import_asset 'requirejs-text/text.js'
  sprockets.import_asset 'underscore/underscore.js'
  sprockets.import_asset 'backbone/backbone.js'
  sprockets.import_asset 'swig/swig.js'
  sprockets.import_asset 'lumberjack/src/lumberjack.js'
end
