class CreateCategoryArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :category_articles do |t|
      t.integer :category_id
      t.integer :article_id

      t.timestamps
    end
  end
end
