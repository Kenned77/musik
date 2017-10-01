require 'test_helper'

class SongLinksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_links_index_url
    assert_response :success
  end

  test "should get new" do
    get song_links_new_url
    assert_response :success
  end

  test "should get edit" do
    get song_links_edit_url
    assert_response :success
  end

  test "should get show" do
    get song_links_show_url
    assert_response :success
  end

end
