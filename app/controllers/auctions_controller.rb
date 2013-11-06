class AuctionsController < ApplicationController
  def index
    @auctions = Auction.all
  end
  
  def new
    @auction = Auction.new
  end

  def create
    @a = Auction.new(auction_params)
    @a.save

    redirect_to(@a)
  end

  def show
    @auction = Auction.find(params[:id])
  end

  private
    def auction_params
      params.require(:auction).permit(:name, :seller_id)
    end
end
