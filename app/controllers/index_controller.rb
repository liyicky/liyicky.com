class IndexController < ApplicationController

    def main
        @blog_posts = BlogPost.all.order(created_at: :desc)
        @latest_post = @blog_posts[0]
        @second_latest_post = @blog_posts[1]
        @third_latest_post = @blog_posts[2]
        @fourth_latest_post = @blog_posts[3]

        @other_posts = @blog_posts.slice(4, 9)
    end

    def contact
        respond_to do |format|
            format.html { render :contact }
        end
    end


    def drivejuku
        respond_to do |format|
            format.html { render :drivejuku }
        end
    end
end
