# frozen_string_literal: true

class BookCard < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :book
  belongs_to :library
  belongs_to :reader

  has_one :book_issue, dependent: :destroy
end
