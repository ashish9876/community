class Dogg < ApplicationRecord
  belongs_to :pet, optional: true
  has_many :breeds
end
