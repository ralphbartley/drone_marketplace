class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def create
    @listing = Listing.new(post_params)
    if @listing.save == true
      redirect_to listing_path(Listing.last)
    end
  end

  private

  def post_params
    params.require(:listing).permit(:title, :price, :description)
  end
end
