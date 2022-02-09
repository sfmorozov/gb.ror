class Post < ApplicationRecord
  validates :name, :content,
            presence: true
end
