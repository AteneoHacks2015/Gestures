class CreateTranslationsAndGestures < ActiveRecord::Migration
  def change
  	create_table :translations do |t|
  		t.string :name
  	end

  	create_table :gestures do |t|
  		t.string :name
  	end

    create_table :translations_gestures do |t|
    	t.belongs_to :translation, index: true
    	t.belongs_to :gesture, index: true
    end

    add_reference :translations, :item, index: true
  end
end
