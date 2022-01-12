# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 72 }
  validates :body, presence: true, length: { minimum: 10 }
end
