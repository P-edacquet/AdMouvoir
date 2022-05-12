class DownloadMailer < ApplicationMailer
  def download_request
    @email = params[:email]
    @post  = post
    mail(to: "sylviemouchezcoach@gmail.com", subject: 'Demande de téléchargement')
  end
end
