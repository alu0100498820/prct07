#File: Rakefile

$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "ejecutar las espectativas de la clase funcion"
task :spec do
  sh "rspec -I. spec/fraccion_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end
