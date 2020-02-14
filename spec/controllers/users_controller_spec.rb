require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /new user " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "USER /" do
    it "responds with 200" do
      post :create, params: { user: { username: "Hello, world!", password: "password"} }
      expect(response).to redirect_to("http://test.host/posts/index")
    end
  end
end
