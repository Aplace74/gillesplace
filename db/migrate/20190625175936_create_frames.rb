class CreateFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :frames do |t|
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end
