require 'test_helper'

class TextBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_block = text_blocks(:one)
  end

  test "should get index" do
    get text_blocks_url
    assert_response :success
  end

  test "should get new" do
    get new_text_block_url
    assert_response :success
  end

  test "should create text_block" do
    assert_difference('TextBlock.count') do
      post text_blocks_url, params: { text_block: {  } }
    end

    assert_redirected_to text_block_url(TextBlock.last)
  end

  test "should show text_block" do
    get text_block_url(@text_block)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_block_url(@text_block)
    assert_response :success
  end

  test "should update text_block" do
    patch text_block_url(@text_block), params: { text_block: {  } }
    assert_redirected_to text_block_url(@text_block)
  end

  test "should destroy text_block" do
    assert_difference('TextBlock.count', -1) do
      delete text_block_url(@text_block)
    end

    assert_redirected_to text_blocks_url
  end
end
