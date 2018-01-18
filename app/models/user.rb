# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :reviews
  has_many :userratings
  has_many :videos, through: :userratings
end
