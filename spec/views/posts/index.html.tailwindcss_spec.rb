require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        content: "Content",
        category: "Category",
        document: true
      ),
      Post.create!(
        title: "Title",
        content: "Content",
        category: "Category",
        document: true
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "div>p", text: "Title".to_s, count: 2
    assert_select "div>p", text: "Content".to_s, count: 2
    assert_select "div>p", text: "Category".to_s, count: 2
    assert_select "div>p", text: "Category".to_s, count: 2
    expect(rendered).to match(/Nouveau/)
    expect(rendered).to match(/Voir/)
    expect(rendered).to match(/Éditer/)
  end
end
