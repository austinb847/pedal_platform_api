class CreatePedals < ActiveRecord::Migration[5.2]
  def change
    create_table :pedals do |t|
      t.column :name, :string
      t.column :price, :integer
      t.column :brand, :string
      t.column :description, :string
      t.column :quantity, :integer
      t.column :featured, :boolean
      t.column :image_url, :string
      t.column :type, :string
      t.column :category, :string
      t.column :country_origin, :string

      t.timestamps
    end
  end
end
