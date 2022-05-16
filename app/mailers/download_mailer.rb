class DownloadMailer < ApplicationMailer
  def download_request
    @post = params[:post]
    @email = params[:email]
    mail(to: "sylviemouchezcoach@gmail.com", cc: "p-edacquet@hotmail.fr, philippe.nougaillon@gmail.com", subject: 'Demande de téléchargement')
  end
end
