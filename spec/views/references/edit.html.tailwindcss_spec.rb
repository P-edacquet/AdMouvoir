require 'rails_helper'

RSpec.describe "references/edit", type: :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      name: "MyString",
      url: "MyString"
    ))
  end

  it "renders the edit reference form" do
    render

    assert_select "form[action=?][method=?]", reference_path(@reference), "post" do
      assert_select "input[name=?]", "reference[name]"
      assert_select "input[name=?]", "reference[url]"
    end
    expect(rendered).to match(/Update Reference/)
    expect(rendered).to match(/Voir/)
    expect(rendered).to match(/Retour aux références/)
  end
end
