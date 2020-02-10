class User < ApplicationRecord
  has_and_belongs_to_many :forums
  has_one :profile  ,inverse_of: :user#,foreign_key: "user_id" #autosave: true
end
  
