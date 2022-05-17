require 'rails_helper'

RSpec.describe Post, type: :model do
  def create_a_post
    Post.create(
      title: "MyTitle",
      content: "MyContent",
      category: "MyCategory"
    )
  end

  describe "#valid?" do
    it "is invalid if post's title is blank" do
      post = create_a_post
      expect(post).to be_valid

      post.title = ""
      expect(post).not_to be_valid

      post.title = nil
      expect(post).not_to be_valid

      post = Post.new
      expect(post.valid?).to be false
    end

    it "is invalid if post's content is blank" do
      post = create_a_post
      expect(post).to be_valid

      post.content = ""
      expect(post).not_to be_valid

      post.content = nil
      expect(post).not_to be_valid

      post = Post.new
      expect(post.valid?).to be false
    end

    it "is invalid if post's category is blank" do
      post = create_a_post
      expect(post).to be_valid

      post.category = ""
      expect(post).not_to be_valid

      post.category = nil
      expect(post).not_to be_valid

      post = Post.new
      expect(post.valid?).to be false
    end
  end
end
