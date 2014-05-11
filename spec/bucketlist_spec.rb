require 'spec_helper'

feature 'User can create, update, and delete a bucklist of wishes' do
  scenario 'User can create a list of wishes' do
    visit ('/')
    click_on 'Add to Your Bucketlist'
    fill_in 'wish', with: "Ride in a hot air balloon"
    fill_in 'description', with: "I would like to fly in a balloon over Italy"
    click_on 'Add'
    expect(page).to have_content("Ride in a hot air balloon")
    click_on 'Ride in a hot air balloon'
    expect(page).to have_content("I would like to fly in a balloon over Italy")
  end

end