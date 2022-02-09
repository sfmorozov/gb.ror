# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, :email,
            presence: true
  validates :name,
            length: { maximum: 20, minimum: 4 }
  validates :name, :email,
            uniqueness: true
end
