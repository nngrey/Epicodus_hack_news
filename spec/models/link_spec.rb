require 'spec_helper'

describe Link do
  it { should have_many :comments }
  it { should validate_presence_of :name }
  it { should validate_presence_of :url }
  context 'add_point' do
    it 'should add 1 point to link' do
      link = FactoryGirl.create :link_with_id
      link.add_point
      link.reload
      link.points.should eq 1
    end
  end

  context 'set_point' do
    it 'should points to zero before save' do
      link = FactoryGirl.build :link_with_info
      link.points.should eq nil
      link.save
      link.reload
      link.points.should eq 0
    end
  end
end
