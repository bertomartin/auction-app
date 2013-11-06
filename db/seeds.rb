# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 pez_auction = Auction.create(:name => "Pez")

 seller = User.create(:name => "Seller")
 high_bidder = User.create(:name => "High Bidder")
 low_bidder = User.create(:name => "Low Bidder")

 pez_auction.seller = seller
 pez_auction.save

 new_bid = Bid.create(:amount => 10, :bidder => high_bidder, :auction => pez_auction)
 low_bidder.bids.create(:amount => 5, :auction => pez_auction)