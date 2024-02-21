class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # has_many :long_comments, -> { where("length(body) > 30") }, class_name: 'Comment'

  validates :title, presence: true
  validates :body, presence: true
end
