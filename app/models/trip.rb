class Trip < ActiveRecord::Base
  include Media
  has_many :activities, :dependent => :destroy
  attr_accessible :main_img, :name, :primary_url
  



end
