class MediumApi
    include HTTParty

    # base_uri "https://api.medium.com"

    HEADERS = {"Authorization" => "Bearer #{ENV["MEDIUM_ACCESS_TOKEN"]} "}

    def self.fetch_user
        response = HTTParty.get("https://api.medium.com/v1/me", {
            headers: HEADERS, 
            debug_output: STDOUT
        })

        if response.success?
            JSON.parse response.body
        else
            raise response.response
        end
    end

    def self.fetch_posts
        response = HTTParty.get("https://medium.com/feed/@liyicky")

        if response.success?
            response
        else
            raise response.response
        end
    end

    def self.parsed_posts
        fetch_posts["rss"]["channel"]["item"] 
    end
end