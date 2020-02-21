# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.post_type == 'public' ? (redirect_to posts_url) : (redirect_to "/users/#{@post.recipient_id}")
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.created_at > 10.minute.ago
      redirect_to posts_url if @post.update(post_params)
    else
      update_over_time_limit
    end
  end

  def index
    @posts = Post.where('post_type = ?', 'public').order(created_at: :desc)
    # @comments = Comment.where('posts_id = ?', params[:id] )
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
  end

  private

  def post_params
    defaults = { users_id: @current_user.id }
    params.require(:post).permit(:message,
                                 :users_id,
                                 :recipient_id,
                                 :post_type)
          .reverse_merge(defaults)
  end

  def update_over_time_limit
    flash[:notice] = 'You can only edit messages for a maximum of 10 minutes after creation.'
    flash[:color] = 'invalid'
    redirect_to posts_url
  end
end
