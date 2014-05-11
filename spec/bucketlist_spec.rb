require 'spec_helper'

feature 'User can create, update, and delete a bucklist of wishes' do
  scenario 'User can manage a list of wishes' do
    visit ('/')
    click_on 'Add to Your Bucketlist'
    fill_in 'wish', with: "Ride in a hot air balloon"
    fill_in 'description', with: "I would like to fly in a balloon over Italy"
    click_on 'Add'
    expect(page).to have_content("Ride in a hot air balloon")
    within ".items" do
      click_on("Ride in a hot air balloon", :match => :first)
    end
    expect(page).to have_content("Ride in a hot air balloon")
    expect(page).to have_content("I would like to fly in a balloon over Italy")

    click_on 'Ride in a hot air balloon'
    fill_in 'wish', with: "Ride in a sail boat"
    fill_in 'description', with: "Ride the seas in the Bahamas"
    click_on 'Update'
    expect(page).to have_content "Ride in a sail boat"

  end
  scenario "User can delete something from the list" do
    visit ('/')
    click_on 'Add to Your Bucketlist'
    fill_in 'wish', with: "Ride in a hot air balloon"
    fill_in 'description', with: "I would like to fly in a balloon over Italy"
    click_on 'Add'
    expect(page).to have_content("Ride in a hot air balloon")
    click_on "Ride in a hot air balloon"
    click_on "Ride in a hot air balloon"
    click_on "Delete"
    expect(page).to not_have content "Ride in a hot air balloon"

  end

end