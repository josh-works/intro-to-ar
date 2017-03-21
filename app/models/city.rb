class City < ActiveRecord::Base

  has_many :climbing_gyms

  validates :name, :presence => true


end
