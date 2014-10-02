desc "Build JS Complexity Report"
task :jscomplexity do |t|
  puts "Building complexity report..."

  `plato -r -d report source/javascripts`

  puts "DONE: Report is ready at report/index.html"
end
