class SearchController < ApplicationController
  def index
    connection = Faraday.new("https://api.data.gov/nrel")
    response = connection.get("/alt-fuel-stations/v1/nearest.json?limit=10&api_key=HU37sJpsOJqSes3Ulap7ZbEOqTQjby45OJq2FQsl&radius=6&location=#{params[:q]}&fuel_type  =ELEC,LPG")
    require "pry"; binding.pry
  end
end
