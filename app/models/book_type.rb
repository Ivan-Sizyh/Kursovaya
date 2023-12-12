class BookType < ApplicationRecord
  belongs_to :book
  belongs_to :type
end
