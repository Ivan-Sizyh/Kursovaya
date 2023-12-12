class BookCard < ApplicationRecord
  belongs_to :book
  belongs_to :library
  belongs_to :reader

  has_one :book_issue, dependent: :destroy
end
