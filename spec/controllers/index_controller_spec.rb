require 'rails_helper'

RSpec.describe IndexController, :type => :controller do
    describe "GET main" do

        it "has a 200 status code" do
            get :main
            expect(response.status).to eq(200)
        end

        it "renders the index template" do
            get :main
            expect(response).to render_template("main")
        end
    end
end