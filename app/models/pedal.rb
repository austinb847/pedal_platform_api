class Pedal < ApplicationRecord
  validates :name, :price, :brand, :description, :quantity, :featured, :image_url,
  :kind, :category, presence: true

  scope :random_pedal, -> {(
    select("*")
    .from("pedals")
    .order(Arel.sql("RANDOM()"))
    .limit(1)
  )}
end