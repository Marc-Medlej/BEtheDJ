class AddDjNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dj_name, :string
  end
end
