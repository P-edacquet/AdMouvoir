require 'rails_helper'

RSpec.describe "references/new", type: :view do
  before(:each) do
    assign(:reference, Reference.new(
      name: "MyString",
      url: "MyString"
    ))
  end

  it "renders new reference form" do
    render

    assert_select "form[action=?][method=?]", references_path, "post" do

      assert_select "input[name=?]", "reference[name]"
      assert_select "input[name=?]", "reference[url]"
    end
    expect(rendered).to match(/Create Reference/)
    expect(rendered).to match(/Retour aux références/)
  end
end
