module Kimoner
  RAILS_VERSION = "~> 5.0.0".freeze
  RUBY_VERSION = IO.
    read("#{File.dirname(__FILE__)}/../../.ruby-version").
    strip.
    freeze
  VERSION = "1.44.0".freeze
end
