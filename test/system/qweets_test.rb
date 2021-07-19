require "application_system_test_case"

class QweetsTest < ApplicationSystemTestCase
  setup do
    @qweet = qweets(:one)
  end

  test "visiting the index" do
    visit qweets_url
    assert_selector "h1", text: "Qweets"
  end

  test "creating a Qweet" do
    visit qweets_url
    click_on "New Qweet"

    fill_in "Qweet", with: @qweet.qweet
    click_on "Create Qweet"

    assert_text "Qweet was successfully created"
    click_on "Back"
  end

  test "updating a Qweet" do
    visit qweets_url
    click_on "Edit", match: :first

    fill_in "Qweet", with: @qweet.qweet
    click_on "Update Qweet"

    assert_text "Qweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Qweet" do
    visit qweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qweet was successfully destroyed"
  end
end
