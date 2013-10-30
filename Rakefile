$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :bin


desc "Ejecutar las espectativas de la clase Fraccion"
  task :bin do
  sh "rspec -I. spec/Frac_spec.rb"
end

desc "Ejecutar con documentacion"
  task :doc do
  sh "rspec -I. spec/Frac_spec.rb --format documentation"
end

desc "Ejecutar con formato html"
  task :thtml do
  sh "rspec -I. spec/Frac_spec.rb --format html"
end
