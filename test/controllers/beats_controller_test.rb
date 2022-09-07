require "test_helper"

class BeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beat = beats(:one)
  end

  test "should get index" do
    get beats_url
    assert_response :success
  end

  test "should get new" do
    get new_beat_url
    assert_response :success
  end

  test "should create beat" do
    assert_difference("Beat.count") do
      post beats_url, params: { beat: { Title: @beat.Title, bpm: @beat.bpm, description: @beat.description, genre: @beat.genre, price: @beat.price, scale: @beat.scale } }
    end

    assert_redirected_to beat_url(Beat.last)
  end

  test "should show beat" do
    get beat_url(@beat)
    assert_response :success
  end

  test "should get edit" do
    get edit_beat_url(@beat)
    assert_response :success
  end

  test "should update beat" do
    patch beat_url(@beat), params: { beat: { Title: @beat.Title, bpm: @beat.bpm, description: @beat.description, genre: @beat.genre, price: @beat.price, scale: @beat.scale } }
    assert_redirected_to beat_url(@beat)
  end

  test "should destroy beat" do
    assert_difference("Beat.count", -1) do
      delete beat_url(@beat)
    end

    assert_redirected_to beats_url
  end
end
