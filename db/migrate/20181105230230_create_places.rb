class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :schedule
      t.string :description
      t.string :zone
      t.decimal :latitude
      t.references :contact, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
