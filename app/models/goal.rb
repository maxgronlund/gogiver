class Goal < ActiveRecord::Base
  belongs_to :life_array
  validates_presence_of :title, :body
end
