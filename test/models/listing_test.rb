require "test_helper"

class ListingTest < ActiveSupport::TestCase

  test "should not save listing without title, price, and description" do
    listing = Listing.new
    assert_not listing.save, "Saved without title, price, or description"
  end

end
