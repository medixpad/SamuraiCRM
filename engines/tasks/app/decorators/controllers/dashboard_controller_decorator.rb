Samurai::DashboardController.class_eval do
  before_action :set_tasks, only: :index
  
  private
  
  def set_tasks
    @tasks = current_user.tasks
  end
end
