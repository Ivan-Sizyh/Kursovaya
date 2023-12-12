class LibraryMembership < ApplicationRecord
  belongs_to :library
  belongs_to :reader
end
