require 'httparty'

class MuncherApiWrapper
  BASE_URL = "https://api.edamam.com/"
  APP_ID = ENV["MUNCHER_ID"]
  APP_KEY = ENV["MUNCHER_KEY"]

  attr_reader :label, :image, :source, :url, :dietLabels, :healthLabels, :ingredientLines, :query


  def self.get_recipes(app_id = nil, app_key = nil, query)
    app_id = APP_ID if app_id == nil
    app_key = APP_KEY if app_key == nil
    url = BASE_URL + "search?" + "&app_id=#{app_id}" + "&app_key=#{app_key}" + "&q=#{query}"
    data = HTTParty.get(url)
    recipes = []
    # check to see if url is set up correctly to begin troubleshooting

    if data["hits"]
      data["hits"].each do |recipe|
        wrapper = Recipe.new(recipe["recipe"]["label"], recipe["recipe"]["image"], recipe["recipe"]["source"], recipe["recipe"]["url"], recipe["recipe"]["dietLabels"], recipe["recipe"]["healthLabels"], recipe["recipe"]["ingredientLines"])

        recipes << wrapper
      end
      return recipes
    else
      return nil
    end
  end


  def self.show_recipe(app_id = nil, app_key = nil)
    app_id ||= APP_ID
    app_key ||= APP_KEY
    url = BASE_URL + "search?" + "&app_id=#{app_id}" + "&app_key=#{app_key}" + "&r=#{data[:hits]["recipe"]["uri"]}"

    url = "&r=#{data[:hits]["recipe"]["uri"]}"



  end




end

#
#   def self.sendmsg(channel, msg, token = nil)
#     token = TOKEN if token == nil
#
#     url = BASE_URL + "chat.postMessage?" + "token=#{token}"
#     puts url
#     puts "Channel = #{channel}"
#     data = HTTParty.post(url,
#                body:  {
#                   "text" => "#{msg}",
#                   "channel" => "#{channel}",
#                   "username" => "CheezItBot",
#                   "icon_url" => "https://avatars.slack-edge.com/2016-06-01/47243492547_e3bd80a93a62bd63b8e6_72.png",
#                   "as_user" => "false"
#                 },
#              :headers => { 'Content-Type' => 'application/x-www-form-urlencoded' })
#   end
#
#   def self.listchannels(token = nil)
#     token ||= TOKEN
#     url = BASE_URL + "channels.list?" + "token=#{token}" + "&pretty=1&exclude_archived=1"
#     data = HTTParty.get(url)
#     channels = []
#     if data["channels"]  # if the request was successful
#       data["channels"].each do |channel|
#
#         wrapper = Slack_Channel.new channel["name"], channel["id"] , purpose: channel["purpose"], is_archived: channel["is_archived"], members: channel["members"]
#         channels << wrapper
#       end
#      return channels
#     else
#      return nil
#     end
#   end
