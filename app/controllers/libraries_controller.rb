# frozen_string_literal: true

class LibrariesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @libraries = Library.all
  end
end
