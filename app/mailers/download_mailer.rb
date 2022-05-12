class DownloadMailer < ApplicationMailer
  def download_request
    @post = params[:post]
    @email = params[:email]
    mail(to: "sylviemouchezcoach@gmail.com", subject: 'Demande de téléchargement')
  end
end
