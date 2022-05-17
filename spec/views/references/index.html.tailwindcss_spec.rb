require 'rails_helper'

RSpec.describe "references/index", type: :view do
  before(:each) do
    assign(:references, [
      Reference.create!(
        name: "Name",
        url: "Url"
      ),
      Reference.create!(
        name: "Name",
        url: "Url"
      )
    ])
  end

  it "renders a list of references" do
    render
    assert_select "div>p>strong", text: "Name:".to_s, count: 2
    assert_select "div>p>strong", text: "URL:".to_s, count: 2
    expect(rendered).to match(/Nouveau/)
    expect(rendered).to match(/Voir/)
    expect(rendered).to match(/Éditer/)
  end
end
