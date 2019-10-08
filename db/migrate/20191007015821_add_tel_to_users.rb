class AddTelToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tel, :string
    add_column :users, :address, :string
  end
end
