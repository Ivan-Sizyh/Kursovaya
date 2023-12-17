# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :book_types
  has_many :types, through: :book_types
end
