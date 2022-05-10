class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @posts = Post.first(3)
  end
  def posts
    @posts = Post.all
  end
end
