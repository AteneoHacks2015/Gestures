class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login,                null: false
      t.string :crypted_password,     null: false
      t.string :password_salt,        null: false
      t.string :persistence_token,    null: false
      t.string :single_access_token,  null: false
      t.string :perishable_token,     null: false

      t.datetime :current_login_at
      t.string :current_login_ip

      t.string :role
      t.string :name
      t.string :school

      t.timestamps null: false
    end
  end
end
