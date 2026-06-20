class Pokeball < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon

  validates :location, presence: true
  validates :caught_on, presence: true
end
