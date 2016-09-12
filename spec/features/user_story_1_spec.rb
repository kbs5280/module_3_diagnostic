require 'rails_helper'

# As a user
# When I visit root_path
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
describe 'Search for stations in 80203', type: :feature do
  scenario 'and see the results as specified in the spec' do

    visit '/'
    fill_in 'q', with: 80203
    click_on 'Locate'

    # expectations
  end
end

https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?limit=10&api_key=HU37sJpsOJqSes3Ulap7ZbEOqTQjby45OJq2FQsl&radius=6&location=Denver,CO&fuel_type  =ELEC,LPG
