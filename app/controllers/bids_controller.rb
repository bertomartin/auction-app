class BidsController < ApplicationController

  def new
    @auction = Auction.find(params[:id])
    @bid = Bid.new
  end

  def create
    @auction = Auction.find(params[:id])
    @bid = @auction.bids.build(bid_params)
    @bid.save

    redirect_to @auction
  end

  private
    def bid_params
      params.require(:bid).permit(:amount, :bidder_id)
    end
end
