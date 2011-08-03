class GoalsController < InheritedResources::Base
  
  load_and_authorize_resource
  belongs_to :life_array , :optional => true
  
  def update
    update! {user_life_array_path(@goal.life_array.user, @goal.life_array)}
  end
  
  def create
    create! {user_life_array_path(@goal.life_array.user, @goal.life_array)}
  end
  
  def destroy
    @go_to = user_life_array_path(@goal.life_array.user, @goal.life_array)
    destroy! {@go_to}
  end
  
end
