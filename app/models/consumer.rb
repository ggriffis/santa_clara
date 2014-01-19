class Consumer < ActiveRecord::Base
  validates_uniqueness_of :email, message: "Yay! You've already been added to the email list!"
  validates_presence_of :email, message: "Please enter an email address"
end
