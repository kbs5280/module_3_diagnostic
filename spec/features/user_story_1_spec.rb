require 'rails_helper'

# As a user
# When I visit root_path
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
describe 'When I search for the 10 closest gas stations', type: :feature do
  scenario 'I see the 10 closest gas stations on the search spec' do
    visit root_path

    fill_in 'q', with: '80203'
    click_on 'Locate'

    expect(current_path).to eq '/search'

    expect(page).to have_content 'UDR'
    expect(page).to have_content '800 Acoma St'
    expect(page).to have_content 'ELEC'
    expect(page).to have_content '0.3117'
    expect(page).to have_content '24 hours daily'
    expect(page).not_to have_content 'BD'
    expect(page).not_to have_content 'CNG'
    expect(page).not_to have_content 'E85'
    expect(page).not_to have_content 'HY'
    expect(page).not_to have_content 'LNG'
  end
end
