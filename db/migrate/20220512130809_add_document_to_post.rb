class AddDocumentToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :document, :boolean, null: false, default: 0
    Post.update_all(document: 0)
  end

end
