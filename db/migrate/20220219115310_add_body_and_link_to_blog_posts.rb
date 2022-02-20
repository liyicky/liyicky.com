class AddBodyAndLinkToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :body, :text
    add_column :blog_posts, :link, :string
  end
end
