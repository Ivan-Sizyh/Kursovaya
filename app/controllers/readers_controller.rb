# frozen_string_literal: true

class ReadersController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @readers = Reader.all
  end
end
