class Client < ApplicationRecord
  has_many :pets
  delegate :count, to: :pets, prefix: true

  def pet_names
      pets.pluck(:name)
  end
end
