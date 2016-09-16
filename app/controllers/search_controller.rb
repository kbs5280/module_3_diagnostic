class SearchController < ApplicationController
  def index
    @nearest_stations = Stations.nearest_stations(params["q"])
  end
end
