# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
describe 'Search for stations in 80203', type: :feature do
  scenario 'and see the results as specified in the spec' do
    visit root_path
    fill_in 'Search by zip...', with: 80203
    click_on 'Locate'

    # expectations 

  end
end
