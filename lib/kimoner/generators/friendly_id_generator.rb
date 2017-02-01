require "rails/generators"

module Kimoner
  class FriendlyIdGenerator < Rails::Generators::Base
    def add_friendly_id_gem
      gem "friendly_id", "~> 5.1.0"
      Bundler.with_clean_env { run "bundle install" }
    end

    def run_friendly_id_generator
      generate "friendly_id"
    end
  end
end
