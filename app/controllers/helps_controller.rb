class HelpsController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :user , :optional => true
  
  def update 
    goto = session[:go_to_after_edit] || user_path(current_user)
    update! {goto}
  end
  
  def create 
    goto = session[:go_to_after_edit] || user_path(current_user)
    create! {goto}
  end
  
  def destroy
    goto = session[:go_to_after_edit] || user_path(current_user)
    destroy! {goto}
  end
end
