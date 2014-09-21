set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
  activate :minify_javascript
  activate :asset_hash
end

after_configuration do
  sprockets.append_path File.join root.to_s, "source/bower_components"
end
