class BlogPost < ApplicationRecord
  include HTTParty 

  ACCESS_TOKEN = ENV["MEDIUM_ACCESS_TOKEN"]

  def self.fetch
    response = HTTParty.get("https://api.medium.com/v1/me", {
      headers: {"Authorization" => "Bearer #{ACCESS_TOKEN}
"}, debug_output: STDOUT })

    puts response

  end
end
