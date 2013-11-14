set :user, "server-user"
role :web, "stg.mysite.com"
role :app, "stg.mysite.com"
set :deploy_to, "/public_html/#{application}"

#call with cap stg deploy
set :branch, "stg"

# Deploy using SSH Key
ssh_options[:keys] = ["~/.ssh/your-key.pub"]
# Deploy using password (uncomment)
# set :password, "yourpassword"

namespace :deploy do
	
	desc "Override typical rails deploy to build applciation."
	task :finalize_update do
 		bower.update
 		grunt.build
 	end
	
end
