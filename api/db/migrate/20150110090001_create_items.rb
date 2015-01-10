class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :phrase
      t.integer :difficulty
    end

    add_reference :items, :user, index: true
  end
end
