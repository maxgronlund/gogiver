class Help < ActiveRecord::Base
  belongs_to :user
  
  TYPE = %w[slogan edit_slogan gratefull edit_gratefull keyvalue edit_keyvalue lifearray edit_lifearray  profile edit_profile]
  
  scope :slogan, where('help_type LIKE ?', "slogan")
  scope :edit_slogan, where('help_type LIKE ?', "edit_slogan")
  scope :gratefull, where('help_type LIKE ?', "gratefull")
  scope :edit_gratefull, where('help_type LIKE ?', "edit_gratefull")
  scope :keyvalue, where('help_type LIKE ?', "keyvalue")
  scope :edit_keyvalue, where('help_type LIKE ?', "edit_keyvalue")
  scope :lifearray, where('help_type LIKE ?', "lifearray")
  scope :edit_lifearray, where('help_type LIKE ?', "edit_lifearray")
  scope :profile, where('help_type LIKE ?', "profile")
  scope :edit_profile, where('help_type LIKE ?', "edit_profile")
  scope :life_purpose, where('help_type LIKE ?', "life_purpose")
end
