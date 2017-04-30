require 'httparty'

class FacebookStrategy
  include HTTParty
  debug_output $stdout

  def self.authorized?(token, uuid)
    response = self.get("https://graph.facebook.com/me?access_token=#{token}")
    response['id'] && response['id'] == uuid
  end
end
