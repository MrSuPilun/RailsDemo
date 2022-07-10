require "application_system_test_case"

class SanPhamsTest < ApplicationSystemTestCase
  setup do
    @san_pham = san_phams(:one)
  end

  test "visiting the index" do
    visit san_phams_url
    assert_selector "h1", text: "San phams"
  end

  test "should create san pham" do
    visit san_phams_url
    click_on "New san pham"

    fill_in "Imgurl", with: @san_pham.imgUrl
    fill_in "Name", with: @san_pham.name
    fill_in "Price", with: @san_pham.price
    click_on "Create San pham"

    assert_text "San pham was successfully created"
    click_on "Back"
  end

  test "should update San pham" do
    visit san_pham_url(@san_pham)
    click_on "Edit this san pham", match: :first

    fill_in "Imgurl", with: @san_pham.imgUrl
    fill_in "Name", with: @san_pham.name
    fill_in "Price", with: @san_pham.price
    click_on "Update San pham"

    assert_text "San pham was successfully updated"
    click_on "Back"
  end

  test "should destroy San pham" do
    visit san_pham_url(@san_pham)
    click_on "Destroy this san pham", match: :first

    assert_text "San pham was successfully destroyed"
  end
end
