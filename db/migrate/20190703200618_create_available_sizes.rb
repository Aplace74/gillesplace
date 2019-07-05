class CreateAvailableSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :available_sizes do |t|
      t.references :product, foreign_key: true
      t.references :photo_size, foreign_key: true

      t.timestamps
    end
  end
end
