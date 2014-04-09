class Link < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
  validates :url, presence: true
  before_create :set_points

  def set_points
    self.points = 0
  end

  def add_point
    self.update(points: (self.points + 1))
  end
end
