require "rails/generators"

module Kimoner
  class SettingsGenerator < Rails::Generators::Base
    source_root File.expand_path(
      File.join("..", "..", "..", "templates"),
      File.dirname(__FILE__))

    def add_config_gem
      gem "config"
      Bundler.with_clean_env { run "bundle install" }
    end

    def run_settings_generator
      generate "config:install"
    end

    def insert_comment
      copy_file(
        "settings.yml",
        "config/settings.yml",
        force: true,
      )
    end
  end
end
