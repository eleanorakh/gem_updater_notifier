class AddUserToken < ActiveRecord::Migration[5.0]
  def change
    add_column :recipients, :token, :string
  end
end
