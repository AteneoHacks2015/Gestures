class CreateTranslationsAndGestures < ActiveRecord::Migration
  def change
  	
    create_table :gestures do |t|
      t.string :name
    end

    create_table :translations do |t|
  		t.string :name
  	end

    create_table :gestures_translations do |t|
    	t.belongs_to :gesture, index: true
      t.belongs_to :translation, index: true
    end

    add_reference :translations, :item, index: true
  end
end
