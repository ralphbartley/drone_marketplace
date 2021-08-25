require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit listings_url

    assert_selector "h1", text: "Drone Marketplace"
  end

  test "the index shows the 4 latest articles" do
    visit listings_url

    assert_selector "h3", text: "Drone 1"
    assert_selector "h3", text: "Drone 2"
    assert_selector "h3", text: "Drone 3"
    assert_selector "h3", text: "Drone 4"
  end
end
