# frozen_string_literal: true

class Reader < ApplicationRecord # rubocop:disable Style/Documentation
  has_many :library_memberships, dependent: :destroy
  has_many :libraries, through: :library_memberships
  has_many :book_cards, dependent: :destroy
end
