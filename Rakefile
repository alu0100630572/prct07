$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :tu

desc "Pruebas unitarias de la clase Fraccion"
task :tu do
        sh "rspec -I. spec/racional_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
        sh "rspec -I. spec/racional_spec.rb --format documentation"
end
