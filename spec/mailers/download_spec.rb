require "rails_helper"

RSpec.describe DownloadMailer, type: :mailer do
  describe "notify" do
    let(:post) { Post.create(title: 'Mon super post', content: 'Mon super contenu', category: "Super", document: true) }
    let(:email) { 'azertyuiop@gmail.com' }
    let(:mail) { DownloadMailer.with(post: post, email: email).download_request }

    it "renders the headers" do
      expect(mail.subject).to eq("Demande de téléchargement")
      expect(mail.to).to eq(["sylviemouchezcoach@gmail.com"])
      expect(mail.from).to eq(["contact@admouvoir.com"])
      expect(mail.cc).to eq(["p-edacquet@hotmail.fr"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("azertyuiop@gmail.com")
      expect(mail.body.encoded).to match("Mon super post")
    end
  end
end
