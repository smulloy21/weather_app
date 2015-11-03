class Forcast < ActiveRecord::Base
  validates_presence_of :address
  geocoded_by :address   # city state
  before_save :geocode, :get_forcast # auto-fetch coordinates

  private
  def get_forcast
    self.response = ForecastIO.forecast(self.latitude, self.longitude)
  end
end
