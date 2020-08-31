class AddClubToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :club, :boolean
  end
end
