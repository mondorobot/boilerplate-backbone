set :user, "server-user"
role :web, "dev.mysite.com"
role :app, "dev.mysite.com"
set :deploy_to, "/public_html/#{application}"

# This allows you to sepcificy the branch for development deploys. 
# Nice when looking to share feature branches.
# cap -S branch="<branchname>" deploy
set :branch, fetch(:branch, "develop")

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
