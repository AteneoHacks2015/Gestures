class Item < ActiveRecord::Base
  belongs_to :user
  has_many :translations

  def self.random_items(difficulty, count)
    Item.where('difficulty = ?', difficulty).limit(count).order('RANDOM()')
  end

  def correct?(answer)
  	self.translations.each do |translation|
  		t_temp = translation.gestures.pluck(:id) * ','
  		return true if t_temp.eql? answer
  	end
  	return false
  end
end
