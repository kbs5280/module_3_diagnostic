require 'rails_helper'

describe 'Stations', type: :model do
  it 'returns a list of stations' do
    VCR.use_cassette('stations') do
      nearest_stations = Stations.nearest_stations('80203')
      nearest_station = nearest_stations.first

      expect(nearest_station.access_time).to eq('24 hours daily')
      expect(nearest_station.address).to eq('800 Acoma St')
      expect(nearest_station.distance).to eq(0.3117)
      expect(nearest_station.fuel_type).to eq('ELEC')
      expect(nearest_station.name).to eq('UDR')
    end
  end
end
