class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @posts = Post.all
  end
  def posts
    @posts = Post.all
  end
end
