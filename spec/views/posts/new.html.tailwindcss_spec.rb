require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      title: "MyString",
      content: "MyString",
      category: "MyString",
      document: true
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input[name=?]", "post[title]"
      assert_select "textarea[name=?]", "post[content]"
      assert_select "input[name=?]", "post[category]"
      assert_select "input[name=?]", "post[document]"
    end
    expect(rendered).to match(/Create Post/)
    expect(rendered).to match(/Retour aux posts/)
  end
end
