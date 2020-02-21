# frozen_string_literal: true

# require 'rails_helper'
# # require_relative '../../spec_test_helper'

# RSpec.describe "posts/index.html.erb", type: :view do

# #   before(:each) do

# #    user = User.create(email: 'test@abc.com', password: 'password')
# #     # login(user)
# #     # @session = SessionsController.login_attempt
# #     # @post = assigns(:post, Post.create!(users_id: @user.id, message: 'test message'))
# #     session[:user_id] = User.find_by(email: 'test@abc.com').id
# #   end
#   describe "posts/index.html.erb" do
#     it "displays all the posts" do
#       # assign(:user, User.create(email: 'b@p.com', password: '000000'))
#       # assign(:user, session[:user_id] => 1)

#       assign(:posts, [
#         stub_template(:message => "My First Upload!"),
#         stub_template(:message => "My Second Upload!")
#       ])

#       render

#       rendered.should contain("My First Upload!")
#       rendered.should contain("My Second Upload!")
#     end
#   end
# end
