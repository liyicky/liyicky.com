class BlogPost < ApplicationRecord

    def self.sync_posts
        data = MediumApi.parsed_posts
        for post in data
            title = post["title"]
            date = post["pubDate"].to_datetime
            link = post["link"]
            body = post["encoded"]

            post = BlogPost.find_or_create_by(created_at: date)
            post.update(title: title, link: link, body: body)
            post.save
        end
    end

end
