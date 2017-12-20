module Samurai
  module Contacts
    class ApplicationController < Samurai::ApplicationController
      protect_from_forgery with: :exception
    end
  end
end
