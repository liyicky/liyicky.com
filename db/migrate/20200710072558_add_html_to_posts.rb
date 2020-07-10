class AddHtmlToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :html, :text
  end
end
