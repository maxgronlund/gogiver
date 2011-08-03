class Help < ActiveRecord::Base
  belongs_to :user
  
  TYPE = %w[keyvalue edit_keyvalue lifearray edit_lifearray  profile edit_profile]

  scope :keyvalue, where('help_type LIKE ?', "keyvalue")
  scope :edit_keyvalue, where('help_type LIKE ?', "edit_keyvalue")
  scope :lifearray, where('help_type LIKE ?', "lifearray")
  scope :edit_lifearray, where('help_type LIKE ?', "edit_lifearray")
  scope :profile, where('help_type LIKE ?', "profile")
  scope :edit_profile, where('help_type LIKE ?', "edit_profile")
end
