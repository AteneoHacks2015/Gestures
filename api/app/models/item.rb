class Item < ActiveRecord::Base
  belongs_to :user
  has_many :translations

  def self.random_items(difficulty, count)
    Item.where('difficulty = ?', difficulty).limit(count).order('RANDOM()')
  end
end
