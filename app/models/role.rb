class Role < ApplicationRecord
  validates_presence_of :name, :division_id

  has_many :users
  belongs_to :division
end