class User < ActiveRecord::Base
  has_many :items

  acts_as_authentic do |c|
    c.validate_email_field = false
    c.require_password_confirmation = false
  end

  def exp_up(exp)
  	self.experience += exp

  	if self.experience >= 9
  		self.experience = 0
  		self.level = self.level + 1
  	end 
  end
end
