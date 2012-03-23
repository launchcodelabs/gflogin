class Login < ActiveRecord::Base
  attr_accessible :firstName
  attr_accessible :lastName
  attr_accessible :email
  attr_accessible :company
  
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :firstName, :presence => true
  validates :lastName, :presence => true
  
  validates :email, :presence => true,
                    :length => { :minimum => 3, :maximum => 254 },  
                    :format     => { :with => email_regex }         
end
