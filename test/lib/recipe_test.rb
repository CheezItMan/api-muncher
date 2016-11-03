require 'test_helper'
require 'muncher_recipe'

class Muncher_Recipe_Test < ActionController::TestCase
  test "the truth" do
    assert true
  end
#
#   test "You must provide a name & id for a slack channel" do
#     assert_raises ArgumentError do
#       Slack_Channel.new nil, nil
#     end
#
#     assert_raises ArgumentError do
#       Slack_Channel.new "", ""
#     end
#
#     assert_raises ArgumentError do
#       Slack_Channel.new "", "12345"
#     end
#
#     assert_raises ArgumentError do
#       Slack_Channel.new "Partytime", ""
#     end
#
#     assert_raises ArgumentError do
#       Slack_Channel.new "Partytime", nil
#     end
#
#     assert_raises ArgumentError do
#       Slack_Channel.new nil, "12345"
#     end
#
#   end
#
#   test "Name attribute is set correctly" do
#     test_me = Slack_Channel.new "Elle", "12345"
#     assert test_me.name == "Elle"
#   end
#
#   test "ID attribute is set correctly" do
#     test_me = Slack_Channel.new "Elle", "12345"
#     assert test_me.id == "12345"
#   end

end
