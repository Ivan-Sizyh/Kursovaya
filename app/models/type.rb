# frozen_string_literal: true

class Type < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :book_types
  has_many :books, through: :book_types
end
