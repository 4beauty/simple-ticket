class Department < ApplicationRecord
  has_many :users
  has_many :tickets
end
