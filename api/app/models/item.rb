class Item < ActiveRecord::Base
  belongs_to :user
  has_many :translations

  def self.random_items(difficulty, count)
    @items = Item.where(difficulty: difficulty)
    offset = rand(@items.size)
    record = @items.offset(offset).first
  end

  def correct?(answer)
  	self.translations.each do |translation|
  		t_temp = translation.gestures.pluck(:id) * ','
  		return true if t_temp.eql? answer
  	end
  	return false
  end
end
