class Pedal < ApplicationRecord
  validates :name, :price, :brand, :description, :quantity, :featured, :image_url,
  :kind, :category, presence: true

  scope :random_pedal, -> {(
    select("*")
    .from("pedals")
    .order(Arel.sql("RANDOM()"))
    .limit(1)
  )}

  scope :value, -> { where(kind: "value")}
  scope :standard, -> { where(kind: "standard")}
  scope :premium, -> { where(kind: "premium")}
  scope :featured, -> { where(featured: "true")}
  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
end