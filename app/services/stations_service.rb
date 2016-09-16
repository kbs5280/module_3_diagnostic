class StationsService

  def initialize
    @_connection = Faraday.new('https://api.data.gov/nrel/alt-fuel-stations/v1')
  end

  def nearest_stations(zipcode)
    response = connection.get("nearest.json?api_key=HU37sJpsOJqSes3Ulap7ZbEOqTQjby45OJq2FQsl&limit=10&location=#{zipcode}&radius=6.0&fuel_type=ELEC,LPG")
    JSON.parse(response.body)
  end

  private

    def connection
      @_connection
    end
end
