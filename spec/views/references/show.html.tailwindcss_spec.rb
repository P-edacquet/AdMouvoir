require 'rails_helper'

RSpec.describe "references/show", type: :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      name: "Name",
      url: "https://cogip.github.io/img/cogip-grand.png"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/URL/)
    expect(rendered).to match(/Éditer/)
    expect(rendered).to match(/Supprimer/)
    expect(rendered).to match(/Retour aux références/)
    
  end
end
