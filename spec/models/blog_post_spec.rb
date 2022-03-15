require 'rails_helper'

RSpec.describe BlogPost, :type => :model do

  it "is valid with valid attributes" do
    expect(BlogPost.new).to be_valid
  end

  # describe ".sync_posts" do
  #   it "creates blog posts" do
      
  #   end
  # end
  

end