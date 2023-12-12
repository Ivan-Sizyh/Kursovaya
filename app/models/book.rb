class Book < ApplicationRecord
  has_many :book_types
  has_many :types, through: :book_types
end
