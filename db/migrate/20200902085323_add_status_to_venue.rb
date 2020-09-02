class AddStatusToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :status, :string
  end
end
