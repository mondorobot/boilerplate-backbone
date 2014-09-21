require 'rake/file_list'
require 'pathname'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
  activate :minify_javascript
  activate :asset_hash
end

after_configuration do
  bower_directory = File.join(root, 'bower_components')
  sprockets.append_path bower_directory

  sprockets.import_asset 'modernizr/modernizr.js'
end

after_build do
  #`find . -type f -path "*.coffee" | grep -v "node_modules/" | xargs coffee-jshint`
end
