require "rails_helper"
require_relative "../support/devise"

RSpec.describe PostsController, type: :controller do
  describe "GET /" do
    login

    context "from login" do
      it "should return 200:OK" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end