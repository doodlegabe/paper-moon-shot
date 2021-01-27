require "application_system_test_case"

class TextBlocksTest < ApplicationSystemTestCase
  setup do
    @text_block = text_blocks(:one)
  end

  test "visiting the index" do
    visit text_blocks_url
    assert_selector "h1", text: "Text Blocks"
  end

  test "creating a Text block" do
    visit text_blocks_url
    click_on "New Text Block"

    click_on "Create Text block"

    assert_text "Text block was successfully created"
    click_on "Back"
  end

  test "updating a Text block" do
    visit text_blocks_url
    click_on "Edit", match: :first

    click_on "Update Text block"

    assert_text "Text block was successfully updated"
    click_on "Back"
  end

  test "destroying a Text block" do
    visit text_blocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text block was successfully destroyed"
  end
end
