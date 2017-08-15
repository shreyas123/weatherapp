class CreateCities < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pg_trgm'

    create_table :cities do |t|
      t.string :name
      t.references :country, foreign_key: true
      t.float :lat
      t.float :lon

      t.timestamps
    end
    add_index :cities, :name, using: :gin, order: { name: :gin_trgm_ops }
    add_index :cities, [:name, :country_id]
  end
end
