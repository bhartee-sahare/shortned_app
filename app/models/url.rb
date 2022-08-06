class Url < ApplicationRecord
  validates :original, presence: true, uniqueness: true, url: true
  validates :shortened, presence: true, uniqueness: true
end
