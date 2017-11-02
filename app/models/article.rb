class Article < ApplicationRecord
  has_many :versions, dependent: :destroy
  has_many :category_articles
  has_many :categories, through: :category_articles

  def published_version
    Version.find_by(id: self.published_version_id)
  end
end
