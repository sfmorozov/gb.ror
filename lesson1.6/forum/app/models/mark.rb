# frozen_string_literal: true

class Mark < ApplicationRecord
  validates :value, presence: true
  validates :value, length: { maximum: 5, minimum: 1 }
end
