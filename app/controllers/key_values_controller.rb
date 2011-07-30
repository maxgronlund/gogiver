class KeyValuesController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :user , :optional => true
  
  def update
    update! {user_path(@key_value.user)}
  end
  
  def create
    create! {user_path(@key_value.user)}
  end
  
  def destroy
    destroy! {user_path(@key_value.user)}
  end
end
