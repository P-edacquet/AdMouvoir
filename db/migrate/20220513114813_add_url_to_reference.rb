class AddUrlToReference < ActiveRecord::Migration[7.0]
  def change
    add_column :references, :url, :string
  end
end
