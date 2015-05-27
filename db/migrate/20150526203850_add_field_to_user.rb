class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :integer
  end
end
