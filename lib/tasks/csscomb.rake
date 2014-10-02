namespace :csscomb do

  desc "Comb the stylesheets"
  task :comb do |t|
  	puts "Combing css with config at .csscomb.json"
    `node_modules/csscomb/bin/csscomb -c .csscomb.json -v source/stylesheets`
    puts "DONE"
  end
end
