require 'spec_helper'

feature 'Manage a list of wishes in a bucket list' do
  scenario 'User can create a list of wishes, see details, update, and delete' do
    visit ('/')
    click_on 'Add to Your Bucket List'
    fill_in 'wish', with: "Ski the Swiss Alps"
    fill_in 'description', with: "It would be so amazing to ski here."
    click_on 'Add'
    expect(page).to have_content "Ski the Swiss Alps"
    click_on 'Ski the Swiss Alps'
    expect(page).to have_content "It would be so amazing to ski here."
    click_on 'Bucket List'
    click_on 'Ski the Swiss Alps'
    click_on 'Ski the Swiss Alps'
    fill_in 'wish', with: "Live in Hong Kong"
    fill_in 'description', with: "It would be a great way to learn the culture"
    click_on 'Update'
    expect(page).to have_content "Live in Hong Kong"
    click_on 'Live in Hong Kong'
    click_on 'Live in Hong Kong'
    click_on 'Delete'
    expect(page).to_not have_content "Live in Hong Kong"

  end
end