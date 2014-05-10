require 'spec_helper'

feature 'User can create, update, and delete a bucklist of wishes' do
  it 'User can create a list of wishes' do
    visit ('/')
    expect(page).to have_content ("Bucketlist")
  end
end