class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, :address, presence: true
  validates :category, :inclusion => { :in => %w(chinese italian japanese french belgian),
    :message => "%{value} is not a valid category" }
end
