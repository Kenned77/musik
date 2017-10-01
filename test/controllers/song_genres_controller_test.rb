require 'test_helper'

class SongGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_genres_index_url
    assert_response :success
  end

  test "should get new" do
    get song_genres_new_url
    assert_response :success
  end

  test "should get edit" do
    get song_genres_edit_url
    assert_response :success
  end

  test "should get show" do
    get song_genres_show_url
    assert_response :success
  end

end
