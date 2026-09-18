require "application_system_test_case"

class MacropostsTest < ApplicationSystemTestCase
  setup do
    @macropost = macroposts(:one)
  end

  test "visiting the index" do
    visit macroposts_url
    assert_selector "h1", text: "Macroposts"
  end

  test "should create macropost" do
    visit macroposts_url
    click_on "New macropost"

    fill_in "Content", with: @macropost.content
    fill_in "User", with: @macropost.profile_id
    click_on "Create Macropost"

    assert_text "Macropost was successfully created"
    click_on "Back"
  end

  test "should update Macropost" do
    visit macropost_url(@macropost)
    click_on "Edit this macropost", match: :first

    fill_in "Content", with: @macropost.content
    fill_in "User", with: @macropost.profile_id
    click_on "Update Macropost"

    assert_text "Macropost was successfully updated"
    click_on "Back"
  end

  test "should destroy Macropost" do
    visit macropost_url(@macropost)
    click_on "Destroy this macropost", match: :first

    assert_text "Macropost was successfully destroyed"
  end
end
