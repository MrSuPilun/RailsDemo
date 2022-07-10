require "test_helper"

class SanPhamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @san_pham = san_phams(:one)
  end

  test "should get index" do
    get san_phams_url
    assert_response :success
  end

  test "should get new" do
    get new_san_pham_url
    assert_response :success
  end

  test "should create san_pham" do
    assert_difference("SanPham.count") do
      post san_phams_url, params: { san_pham: { imgUrl: @san_pham.imgUrl, name: @san_pham.name, price: @san_pham.price } }
    end

    assert_redirected_to san_pham_url(SanPham.last)
  end

  test "should show san_pham" do
    get san_pham_url(@san_pham)
    assert_response :success
  end

  test "should get edit" do
    get edit_san_pham_url(@san_pham)
    assert_response :success
  end

  test "should update san_pham" do
    patch san_pham_url(@san_pham), params: { san_pham: { imgUrl: @san_pham.imgUrl, name: @san_pham.name, price: @san_pham.price } }
    assert_redirected_to san_pham_url(@san_pham)
  end

  test "should destroy san_pham" do
    assert_difference("SanPham.count", -1) do
      delete san_pham_url(@san_pham)
    end

    assert_redirected_to san_phams_url
  end
end
