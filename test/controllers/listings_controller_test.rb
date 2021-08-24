require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should create new listing" do
    assert_difference("Listing.count") do
      post listings_url, params: { listing: { title: "Test Title",
      price: 100, description: "Test Description"} }
    end
    assert_redirected_to listing_path(Listing.last)
  end
  
end
