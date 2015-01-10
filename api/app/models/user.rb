class User < ActiveRecord::Base
  has_many :items

  acts_as_authentic do |c|
    c.validate_email_field = false
    c.require_password_confirmation = false
  end
end
