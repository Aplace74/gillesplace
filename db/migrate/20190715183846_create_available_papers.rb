class CreateAvailablePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :available_papers do |t|
      t.references :product, foreign_key: true
      t.references :paper, foreign_key: true

      t.timestamps
    end
  end
end
