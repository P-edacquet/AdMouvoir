require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "MyString",
      content: "MyString",
      category: "MyString",
      document: false
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input[name=?]", "post[title]"
      assert_select "textarea[name=?]", "post[content]"
      assert_select "input[name=?]", "post[category]"
      assert_select "input[name=?]", "post[document]"
    end
    expect(rendered).to match(/Update Post/)
    expect(rendered).to match(/Voir/)
    expect(rendered).to match(/Retour aux posts/)
  end
end
