class LifeArraysController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :user , :optional => true

  
  
  def update
    update! {user_path(@life_array.user)}
  end
  
  def create
    create! {user_path(@life_array.user)}
  end
  
  def destroy
    destroy! {user_path(@life_array.user)}
  end
end
