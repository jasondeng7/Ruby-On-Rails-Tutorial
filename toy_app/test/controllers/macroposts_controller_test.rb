require "test_helper"

class MacropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @macropost = macroposts(:one)
  end

  test "should get index" do
    get macroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_macropost_url
    assert_response :success
  end

  test "should create macropost" do
    assert_difference("Macropost.count") do
      post macroposts_url, params: { macropost: { content: @macropost.content, profile_id: @macropost.profile_id } }
    end

    assert_redirected_to macropost_url(Macropost.last)
  end

  test "should show macropost" do
    get macropost_url(@macropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_macropost_url(@macropost)
    assert_response :success
  end

  test "should update macropost" do
    patch macropost_url(@macropost), params: { macropost: { content: @macropost.content, profile_id: @macropost.profile_id } }
    assert_redirected_to macropost_url(@macropost)
  end

  test "should destroy macropost" do
    assert_difference("Macropost.count", -1) do
      delete macropost_url(@macropost)
    end

    assert_redirected_to macroposts_url
  end
end
