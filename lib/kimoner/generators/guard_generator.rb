require "rails/generators"

module Kimoner
  class GuardGenerator < Rails::Generators::Base
    source_root File.expand_path(
      File.join("..", "..", "..", "templates"),
      File.dirname(__FILE__))

    def add_guard_gems
      gem "guard", group: [:development, :test]
      gem "guard-rspec", git: "https://github.com/rentziass/guard-rspec.git", group: [:development, :test]
      gem "guard-livereload", "~> 2.5", require: false
      gem "rack-livereload"
      Bundler.with_clean_env { run "bundle install" }
    end

    def add_guardfile
      copy_file(
        "Guardfile",
        "Guardfile",
        force: true,
      )
    end

    def insert_rack_livereload
      config = "config.middleware.insert_after(ActionDispatch::Static, Rack::LiveReload)"

      inject_into_file(
        "config/environments/development.rb",
        config,
        after: "config.action_mailer.raise_delivery_errors = true\n",
      )
    end
  end
end
