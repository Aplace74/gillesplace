class CreateAvailableFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :available_frames do |t|
      t.references :product, foreign_key: true
      t.references :frame, foreign_key: true

      t.timestamps
    end
  end
end
