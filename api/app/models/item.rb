class Item < ActiveRecord::Base
  belongs_to :user
  has_many :translations

  def self.random_items(difficulty, count)
    Item.where('difficulty = ?', difficulty).limit(count).order('RANDOM()')
  end

  def correct?(translation_answer)
  	self.translations.each do |translation|
  		t_temp = translation.gestures.pluck(:id) * ','
  		t_ans = translation_answer.gestures.pluck(:id) * ','
  		return true if t_temp.eql? t_ans
  	end
  	return false
  end
end
