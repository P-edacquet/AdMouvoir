class DownloadMailer < ApplicationMailer
  def download_request
    @post = params[:post]
    @email = params[:email]
    mail(to: "p-edacquet@hotmail.fr", subject: 'Demande de téléchargement')
  end
end
