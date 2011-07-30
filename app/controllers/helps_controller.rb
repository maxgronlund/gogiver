class HelpsController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :user , :optional => true
end
