class IndexController < ApplicationController

    def main
        @blog_posts = BlogPost.all.order(:created_at)
        @latest_post = @blog_posts[0]
        @second_latest_post = @blog_posts[1]
        @third_latest_post = @blog_posts[2]
        @fourth_latest_post = @blog_posts[3]

        @other_posts = @blog_posts.slice(4, 9)
    end
end
