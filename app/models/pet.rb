class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories 
  delegate :count, to: :pet_histories, prefix: true

  def average_weight
      pet_histories.average(:weight)
  end

  def average_height
      pet_histories.average(:height)
  end

  def max_weight
      pet_histories.maximum(:weight)
  end

  def max_height
      pet_histories.maximum(:height)
  end
end
