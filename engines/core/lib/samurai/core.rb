require "jquery-rails"
require "sass-rails"
require "bootstrap-sass"
require "autoprefixer-rails"
require "devise"
require "cancancan"

module Samurai
  module Core
    def self.available?(engine_name)
      Object.const_defined?("Samurai::#{engine_name.to_s.camelize}")
    end
  end
end
