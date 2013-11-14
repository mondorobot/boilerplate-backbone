#
# Include deployment dependancies
#
require 'capistrano_colors'

#
# Setting for Multistage deployments
#
set :stages, %w(prod stg dev)
set :default_stage, "dev"
require 'capistrano/ext/multistage'

#
# Configuration for deployments(github default in boilerplate)
#

set :scm, :git # options for svn and more (see docs)
set :application, "repo-name"
set :repository,  "git@github.com:account-name/#{application}.git"

# Exclude files not need for application to run.
set :copy_exclude, [".git/*", ".svn/*", ".DS_Store", ".gitignore", "README.md", "config/*"]
set :deploy_via, :export

#
# Configuration for remote server
#

default_run_options[:pty] = true
set :use_sudo, false

#remote server dependancies (cap deploy:check)
depend :remote, :command, "grunt"

# clean up old releases on each deploy
set  :keep_releases,  10
after "deploy:restart", "deploy:cleanup"

#
# Extra deploy methods and extenstions (bower, grunt and more)
#

 namespace :deploy do

    task :bundle_install do
        run "cd #{release_path} && bundle install --deployment"
    end

    task :npm_install do
        run "cd #{release_path} && npm install"
    end

 end

namespace :bower do

	desc "Update Bower Dependancies"
    task :update do
        copy_components
        run "cd #{release_path} && bower install"
    end

	desc "Copy bower_components into webroot"
    task :copy_components do
        run "cp -R #{shared_path}/bower_components #{release_path}/www/javascripts/"
    end

end


#
# Helper methods for grunt on deployments
#
namespace :grunt do

    desc "Build application with grunt"
    task :build do
        copy_modules
        run "cd #{release_path} && grunt"
    end

    desc "Copy node_modules into webroot"
    task :copy_modules do
        run "cp -R #{shared_path}/node_modules #{release_path}/"
    end

end

task :uname do
  run "uname -a"
end

