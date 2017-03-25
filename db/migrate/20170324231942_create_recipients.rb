class CreateRecipients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients do |t|
      t.string :email
      t.string :gem
      t.timestamps
    end

    add_index :recipients, :gem
    add_index :recipients, [:email, :gem], unique: true
  end
end
