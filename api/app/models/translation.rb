class Translation < ActiveRecord::Base
	belongs_to :item
	has_and_belongs_to_many :gestures
end