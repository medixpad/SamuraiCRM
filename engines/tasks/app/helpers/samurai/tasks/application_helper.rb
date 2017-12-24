module Samurai
  module Tasks
    module ApplicationHelper
      def check_contact(task)
        if task.contact_id.nil?
          "-"
        else
          task.contact.email
        end
      end
    end
  end
end
