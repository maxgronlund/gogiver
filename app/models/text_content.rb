class TextContent < ActiveRecord::Base
  
  
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  
  
  def self.with_identity(identity)
    where(:identity => identity).first
  end

  def self.welcome 
    with_identity('welcome')
  end
  
end
