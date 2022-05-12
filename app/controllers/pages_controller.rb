class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @posts = Post.first(3)
    @references = Reference.all
  end
  def posts
    @posts = Post.all
  end
  def about
  end
  def inscription
    @post_id = params[:post_id]
  end
  def inscription_create
    @post = Post.find(params[:post_id])
    @email = params[:email]
    
    respond_to do |format|
      DownloadMailer.with(post: @post, email: @email).download_request.deliver_now
      format.html { redirect_to root_path, notice: "Votre message a bien été pris envoyé. Vous recevrez les documents prochainement." }
    end
  end
end
