# frozen_string_literal: true

class TypesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @types = Type.all
  end
end
