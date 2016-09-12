class Search < ActiveRecord::Base

  def self.stations_count(data)
    data["fuel_stations"].count
  end
end
