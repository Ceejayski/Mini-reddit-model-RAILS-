# Migration
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :useremail
      t.string :password
      t.timestamps
    end
  end
end
