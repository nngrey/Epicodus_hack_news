require 'spec_helper'

describe 'when a visitor goes to the homepage' do

  context 'the initial page they see when coming to site' do
    it 'has "All the latest hack news links" as the title of the page' do
      visit '/'
      page.should have_content "All the latest hack news links"
    end
  end

  context 'new link' do
    it 'displays new link page when user clicks "submit"' do
      link = FactoryGirl.create :link
      visit '/'
      click_link "submit"
      page.should have_content "Submit"
    end
  end

end
