require "test_helper"

class QweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qweet = qweets(:one)
  end

  test "should get index" do
    get qweets_url
    assert_response :success
  end

  test "should get new" do
    get new_qweet_url
    assert_response :success
  end

  test "should create qweet" do
    assert_difference('Qweet.count') do
      post qweets_url, params: { qweet: { qweet: @qweet.qweet } }
    end

    assert_redirected_to qweet_url(Qweet.last)
  end

  test "should show qweet" do
    get qweet_url(@qweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_qweet_url(@qweet)
    assert_response :success
  end

  test "should update qweet" do
    patch qweet_url(@qweet), params: { qweet: { qweet: @qweet.qweet } }
    assert_redirected_to qweet_url(@qweet)
  end

  test "should destroy qweet" do
    assert_difference('Qweet.count', -1) do
      delete qweet_url(@qweet)
    end

    assert_redirected_to qweets_url
  end
end
