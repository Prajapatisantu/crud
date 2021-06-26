class AddEmailToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :email, :string
  end
end
