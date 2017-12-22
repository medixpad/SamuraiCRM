module Samurai
  module Contacts
    module Admin
      class ContactsController < Samurai::Admin::AdminController 
        def index
          @contacts = Samurai::Contacts::Contact.all
        end
      end
    end
  end
end
