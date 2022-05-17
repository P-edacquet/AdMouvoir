require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "Title",
      content: "Content",
      category: "Category",
      document: true
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Document/)
    expect(rendered).to match(/Éditer/)
    expect(rendered).to match(/Supprimer/)
    expect(rendered).to match(/Retour aux posts/)

    # todo : tester le bouton new et edit /show ...
  end
end
