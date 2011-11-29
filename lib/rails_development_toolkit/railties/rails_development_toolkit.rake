namespace :development do
  namespace :config do

    CONF_FILES = ["database.yml", "environments/development.rb"]
    CONF_DIR = Rails.root.join("config")

    desc "Build development config files from templates (existing files will be overwritten)"
    task :setup do
      CONF_FILES.each do |file_name|
        source_file_path = CONF_DIR.join("#{file_name}.template")
        next unless File.exists?(source_file_path)
        destination_file_path = CONF_DIR.join(file_name)
        cp source_file_path, destination_file_path
      end   
    end

    desc "Build templates from current development config files (existing files will be overwritten)"
    task :prepare do
      CONF_FILES.each do |file_name|
        source_file_path = CONF_DIR.join(file_name)
        next unless File.exists?(source_file_path)
        destination_file_path = CONF_DIR.join("#{file_name}.template")
        cp source_file_path, destination_file_path
      end
    end

  end
end