task :default => :spec

desc "Ejecutar las espectativas de la clase Fraction"
task :spec do
  sh "rspec -I. spec/Fraction_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/Fraction_spec.rb --format documentation"
end

