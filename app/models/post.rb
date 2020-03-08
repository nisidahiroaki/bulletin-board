class Post < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user
  has_many :comments
  has_many :post_categories
  has_many :categories, through: :post_categories


  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ? OR content LIKE ?', "%#{search}%","%#{search}%"])
  end



end
