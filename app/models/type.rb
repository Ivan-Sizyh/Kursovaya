class Type < ApplicationRecord
  has_many :book_types
  has_many :books, through: :book_types
end
