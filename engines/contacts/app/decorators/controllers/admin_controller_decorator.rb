Samurai::Admin::AdminController.class_eval do 
  before_action :set_contacts, only: :index

  private

  def set_contacts
    @contacts = Samurai::Contacts::Contact.all.last(3)
  end
end
