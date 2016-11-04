require 'test_helper'
require 'muncher_api_wrapper'
require 'recipe'

class Muncher_Api_Test < ActionController::TestCase

  test "the truth" do
    VCR.use_cassette("truthy") do
      assert true
    end
  end

  test "Can retrieve a list of recipes" do
    VCR.use_cassette("get-recipe-list") do
      recipes = MuncherApiWrapper.get_recipes("durian")

      assert recipes.is_a? Array
      assert recipes.length > 0
      recipes.each do |recipe|
        assert recipe.is_a? Recipe
      end
    end
  end

  test "Can retrieve a single recipes" do
    VCR.use_cassette("get-recipe-show") do
      recipe = MuncherApiWrapper.show_recipe("http://www.edamam.com/ontologies/edamam.owl%23recipe_c9044642b3673039d454227917c51e11")

      puts recipe.body
      # assert recipe.is_a? Response
      # assert recipe.length > 0
      # recipe.each do |recipe|
      #   assert recipe.is_a? Recipe
      # end
    end
  end

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
