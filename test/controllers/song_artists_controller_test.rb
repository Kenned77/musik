require 'test_helper'

class SongArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_artists_index_url
    assert_response :success
  end

  test "should get new" do
    get song_artists_new_url
    assert_response :success
  end

  test "should get edit" do
    get song_artists_edit_url
    assert_response :success
  end

  test "should get show" do
    get song_artists_show_url
    assert_response :success
  end

end
