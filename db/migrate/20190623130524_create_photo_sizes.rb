class CreatePhotoSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_sizes do |t|
      t.string :size

      t.timestamps
    end
  end
end
