class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :cell
      t.boolean :banned
      t.string :confirmation_code
      t.string :firstname
      t.string :surname

      t.timestamps
    end
  end
end
