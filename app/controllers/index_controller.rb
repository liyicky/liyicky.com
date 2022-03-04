class IndexController < ApplicationController

    def main
        @blog_posts = BlogPost.all
    end
end
