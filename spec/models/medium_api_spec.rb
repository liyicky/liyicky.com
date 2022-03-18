require 'rails_helper'

RSpec.describe MediumApi, :type => :model do

    describe ".fetch_posts" do
        it "should raise an error for bad response" do
    
            stub_request(:get, "https://medium.com/feed/@liyicky").
            with(
                headers: {
                'Accept'=>'*/*',
                'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                'User-Agent'=>'Ruby'
                }).
            to_return(status: 400, body: "", headers: { 'content-type'=>'text/json' })
    
            expect{ MediumApi.fetch_posts }.to raise_error(Exception, "medium fetch_posts api request failed")
        end    
    end
end