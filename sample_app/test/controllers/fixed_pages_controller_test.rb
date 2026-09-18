require "test_helper"

class FixedPagesControllerTest < ActionDispatch::IntegrationTest


  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end


  test "should get help" do
    get fixed_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get fixed_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get fixed_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
