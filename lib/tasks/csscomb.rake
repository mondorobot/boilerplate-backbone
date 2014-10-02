desc "Comb the stylesheets"
task :csscomb do |t|
	config = '.csscomb.json'
	puts "Combing css with config at #{config}"
`node_modules/csscomb/bin/csscomb -c #{config} -v source/stylesheets`
puts "DONE"
end
