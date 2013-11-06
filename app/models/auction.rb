class Auction < ActiveRecord::Base
  belongs_to :seller, :class_name => "User"
  has_many :bids
  
end
