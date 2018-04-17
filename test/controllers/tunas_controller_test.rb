require 'test_helper'

class TunasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuna = tunas(:one)
  end

  test "should get index" do
    get tunas_url
    assert_response :success
  end

  test "should get new" do
    get new_tuna_url
    assert_response :success
  end

  test "should create tuna" do
    assert_difference('Tuna.count') do
      post tunas_url, params: { tuna: { Fish_id: @tuna.Fish_id, origin: @tuna.origin } }
    end

    assert_redirected_to tuna_url(Tuna.last)
  end

  test "should show tuna" do
    get tuna_url(@tuna)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuna_url(@tuna)
    assert_response :success
  end

  test "should update tuna" do
    patch tuna_url(@tuna), params: { tuna: { Fish_id: @tuna.Fish_id, origin: @tuna.origin } }
    assert_redirected_to tuna_url(@tuna)
  end

  test "should destroy tuna" do
    assert_difference('Tuna.count', -1) do
      delete tuna_url(@tuna)
    end

    assert_redirected_to tunas_url
  end
end
