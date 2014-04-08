require 'spec_helper'

describe Link do

  context 'create link' do
    it 'displays error when field is blank' do
      visit new_link_path
      link_test = FactoryGirl.build :link
      fill_in 'Title', with: link_test.name
      click_button 'Create Link'
      page.should have_content "Name can't be blank"
    end

    it 'displays index page when all fields are filled in' do
      visit new_link_path
      link_test = FactoryGirl.build :link_with_info
      fill_in 'Title', with: link_test.name
      fill_in 'url http://', with: link_test.url
      click_button 'Create Link'
      page.should have_content "All the latest hack news links"
    end
  end
end
