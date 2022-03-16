class BlogPost < ApplicationRecord

    def self.sync_posts
        data = MediumApi.parsed_posts
        
        for post_data in data
            self.create_post(post_data)
        end
    end

    def self.create_post(post_data)
        title = post_data["title"]
        date = post_data["pubDate"].to_datetime
        link = post_data["link"]
        body = post_data["encoded"]

        post = BlogPost.find_or_create_by(created_at: date)
        post.update(title: title, link: link, body: body)
        post.save
    end

    def image_urls
        html = Nokogiri::HTML(self.body)
        image_tags = html.xpath("//img")
        image_urls = image_tags.map { |t| t[:src] }
        image_urls.pop
        image_urls
    end

end
