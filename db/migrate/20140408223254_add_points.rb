class AddPoints < ActiveRecord::Migration
  def change
    add_column :links, :total_points, :integer
    add_column :comments, :points, :integer
  end
end
