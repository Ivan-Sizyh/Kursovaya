# frozen_string_literal: true

class LibraryMembership < ApplicationRecord # rubocop:disable Style/Documentation
  belongs_to :library
  belongs_to :reader
end
