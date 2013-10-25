task :default => :spec

desc "Ejecutar la clase"
task :lib do
  sh "ruby lib/Fraction_main.rb"
end

desc "Ejecutar las espectativas de la clase Fraction"
task :spec do
  sh "rspec test/Fraction_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec test/Fraction_spec.rb --format documentation"
end

desc "Ejecutar con formato html"
task :thtml do
  sh "rspec test/Fraction_spec.rb --format html"
end

