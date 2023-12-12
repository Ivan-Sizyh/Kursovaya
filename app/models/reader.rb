class Reader < ApplicationRecord
  has_many :library_memberships, dependent: :destroy
  has_many :libraries, through: :library_memberships
  has_many :book_cards, dependent: :destroy
end
