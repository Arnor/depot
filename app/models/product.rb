class Product < ActiveRecord::Base
  image_accessor :image_url  
  
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true, :length => {:minimum => 10}

  validates_presence_of :title, :description, :image_url, :price, :message => 'neccesary'
end
