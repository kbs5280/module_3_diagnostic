require 'rails_helper'

describe 'StationsSerivce', type: :model do
  it 'returns a list of stations in JSON format' do
    VCR.use_cassette('stations') do
      nearest_stations = StationsService.new.nearest_stations('80203')

      nearest_station = nearest_stations["fuel_stations"].first

      expect(nearest_station["access_days_time"]).to eq('24 hours daily')
      expect(nearest_station["street_address"]).to eq('800 Acoma St')
      expect(nearest_station["distance"]).to eq(0.3117)
      expect(nearest_station["fuel_type_code"]).to eq('ELEC')
      expect(nearest_station["station_name"]).to eq('UDR')
    end
  end
end
