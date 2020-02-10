class Pet < ApplicationRecord
  has_many :doggs
  has_many :dogg_breeds, :through => :doggs, :source => :breeds
end
