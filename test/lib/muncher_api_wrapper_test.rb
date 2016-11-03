require 'test_helper'
require 'muncher_api_wrapper'
require 'muncher_recipe'

class Muncher_Api_Test < ActionController::TestCase

  test "the truth" do
    assert true
  end

  # test "Can retrieve a list of channels" do
  #   VCR.use_cassette("channels") do
  #     channels = SlackApiWrapper.listchannels
  #
  #     assert channels.is_a? Array
  #     assert channels.length > 0
  #     channels.each do |ch|
  #       assert ch.is_a? Slack_Channel
  #     end
  #   end
  # end
  #
  # test "Retrieves nil when the token is wrong" do
  #   VCR.use_cassette("bad-token") do
  #     channels = SlackApiWrapper.listchannels "bad-token"
  #     assert channels == nil
  #   end
  # end
  #
  # test "Can send a properly formatted msg" do
  #   VCR.use_cassette("send-msg") do
  #     response = SlackApiWrapper.sendmsg("test-api-parens","This is a test case")
  #     assert response["ok"]
  #     assert response["message"]["subtype"] == "bot_message"
  #   end
  # end
  #
  # test "Rejects a message sent to a non-existent channel" do
  #   VCR.use_cassette("bad-channel") do
  #     response = SlackApiWrapper.sendmsg("fakechannel", "This shouldn't go through")
  #     assert_not response["ok"]
  #     assert_not_nil response["error"]
  #   end
  # end
  #
  # test "A non-existent message fails" do
  #   VCR.use_cassette("bad-msg") do
  #     response = SlackApiWrapper.sendmsg("test-api-parens", "")
  #     assert_not response["ok"]
  #     assert_not_nil response["error"], "no_text"
  #
  #     response = SlackApiWrapper.sendmsg("test-api-parens", nil)
  #     assert_not response["ok"]
  #     assert_not_nil response["error"], "no_text"
  #   end
  # end
  #
  # test "A bad token is rejected" do
  #   VCR.use_cassette("bad-msg-token") do
  #     response = SlackApiWrapper.sendmsg("test-api-parens", "womp womp", "12345")
  #     assert_not response["ok"]
  #     assert_equal response["error"], "invalid_auth"
  #
  #     response = SlackApiWrapper.sendmsg("test-api-parens", "womp womp", "")
  #     assert_not response["ok"]
  #     assert_equal response["error"], "not_authed"
  #   end
  # end

end
