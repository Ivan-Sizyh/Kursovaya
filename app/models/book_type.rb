# frozen_string_literal: true

class BookType < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :book
  belongs_to :type
end
