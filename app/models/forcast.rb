class Forcast < ActiveRecord::Base
  validates_presence_of :latitude, :longitude, :address
  
end
