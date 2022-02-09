# frozen_string_literal: true

class Post < ApplicationRecord
  validates :name, :content,
            presence: true
end
