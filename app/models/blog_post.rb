class BlogPost < ApplicationRecord

    def self.sync_posts
        data = MediumApi.parsed_posts
        
        for post in data
            self.create_post(post)
        end
    end

    def self.create_post(data)
        title = post["title"]
        date = post["pubDate"].to_datetime
        link = post["link"]
        body = post["encoded"]

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
