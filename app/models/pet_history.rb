class PetHistory < ApplicationRecord
  belongs_to :pet
  delegate :name, to: :pet, prefix: true
end
