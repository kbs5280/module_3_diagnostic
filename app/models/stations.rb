class Stations
  attr_reader :name, :address, :fuel_type, :distance, :access_time

  def initialize(station)
    @name = station["station_name"]
    @address = station["street_address"]
    @fuel_type = station["fuel_type_code"]
    @distance = station["distance"]
    @access_time = station["access_days_time"]
  end

  def self.nearest_stations(zipcode)
    nearest_stations = StationsService.new.nearest_stations(zipcode)
    nearest_stations["fuel_stations"].map do |station|
      Stations.new(station)
    end
  end
end
