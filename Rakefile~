task :default => :spec

desc "Ejecutar las espectativas de la clase Point"
task :spec do
  sh "rspec -I. spec/point_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/point_spec.rb --format documentation"
end

