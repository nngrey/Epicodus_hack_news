require 'spec_helper'

describe 'when a visitor goes to the homepage' do

  context 'the initial page they see when coming to site' do
    it 'has "All the latest hack news links" as the title of the page' do
      visit '/'
      page.should have_content "All the latest hack news links"
    end
  end

  context 'page links' do
    it 'displays new link page when user clicks "new link"' do
      visit '/'
      click_link "new link"
      page.should have_content "New Link"
    end

    it 'displays edit link page when user clicks "edit link"' do
      link_test = FactoryGirl.create :link_with_info
      visit '/'
      click_link "edit"
      page.should have_content "Edit Link"
    end

    it 'deletes link from page when user clicks "delete link"' do
      link_test = FactoryGirl.create :link_with_info
      visit '/'
      click_link "delete"
      page.should have_content "All the latest hack news links"
    end
  end

end
