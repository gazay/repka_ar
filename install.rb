require 'fileutils'

migrate_dir=File.dirname(__FILE__) + "/../../../db/migrate/"
Dir.mkdir( migrate_dir) unless File.exist?(migrate_dir)

migration_config = File.dirname(__FILE__) + "/../../../db/migrate/#{Time.now.strftime("%Y%m%d%H%M%S")}_create_repka_storage.rb"
FileUtils.cp File.dirname(__FILE__) + '/templates/create_repka_storage.rb', migration_config # unless File.exist?(migration_config)

# puts IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))

puts "##########################################################################################"
puts "###  Run the migration ( rake db:migrate ) to create the new table to store stats"
puts "##########################################################################################"
